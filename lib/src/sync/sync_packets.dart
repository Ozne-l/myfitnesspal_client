import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

typedef SyncPacket = ({int type, Uint8List payload});

typedef SyncReply = ({int status, List<SyncPacket> packets});

const syncStatusOk = 1;

const _magic = 0x04d3;
const _packetVersion = 1;
const _headerSize = 10;
const _requestType = 100;
const _replyType = 102;
const _protocolVersion = 45;
const _clientBuild = 51509;
const _requestFlags = 2;
const _requestKind = 0x11;
const _requestReserved = 0;
const _deviceIdLength = 16;
const _byteValues = 256;
const _uuidGroups = [8, 4, 4, 4, 12];

List<int> syncPacket(int type, List<int> payload) => [
  ..._u16(_magic),
  ..._u32(_headerSize + payload.length),
  ..._u16(_packetVersion),
  ..._u16(type),
  ...payload,
];

List<int> syncRequestHeader({
  required int sequence,
  required Uint8List deviceId,
}) => syncPacket(_requestType, [
  ..._u16(_protocolVersion),
  ..._u32(_clientBuild),
  ..._i64(sequence),
  ..._u32(_requestFlags),
  ..._u16(_requestKind),
  ..._u16(_requestReserved),
  ...deviceId,
  ...syncString(''),
]);

List<int> syncString(String value) {
  final bytes = utf8.encode(value);
  return [..._u16(bytes.length), ...bytes];
}

SyncReply parseSyncReply(Uint8List body, {required int sequence}) =>
    switch (_packets(body)) {
      [(type: _replyType, :final payload), ...final rest] => _reply(
        SyncReader(payload),
        rest,
        sequence,
      ),
      [(:final type, payload: _), ...] => throw FormatException(
        'sync response starts with packet $type, expected $_replyType',
      ),
      [] => throw const FormatException('empty sync response'),
    };

SyncReply _reply(SyncReader reader, List<SyncPacket> rest, int sequence) {
  final echoed = reader.i64();
  if (echoed != sequence) {
    throw FormatException(
      'sync reply answers request $echoed, expected $sequence',
    );
  }
  return (status: reader.u8(), packets: rest);
}

Uint8List newSyncDeviceId() {
  final random = Random.secure();
  final bytes = Uint8List.fromList([
    for (var i = 0; i < _deviceIdLength; i++) random.nextInt(_byteValues),
  ]);
  bytes[6] = (bytes[6] & 0x0f) | 0x40;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  return bytes;
}

String formatSyncDeviceId(Uint8List deviceId) {
  final hex = [
    for (final byte in deviceId) byte.toRadixString(16).padLeft(2, '0'),
  ].join();
  final groups = <String>[];
  var start = 0;
  for (final length in _uuidGroups) {
    groups.add(hex.substring(start, start + length));
    start += length;
  }
  return groups.join('-');
}

final class SyncReader {
  SyncReader(this._bytes) : _data = ByteData.sublistView(_bytes);

  final Uint8List _bytes;
  final ByteData _data;
  var _offset = 0;

  int u8() {
    _need(1);
    return _data.getUint8(_offset++);
  }

  int i64() {
    _need(8);
    final value = _data.getInt64(_offset);
    _offset += 8;
    return value;
  }

  String string() {
    _need(2);
    final length = _data.getUint16(_offset);
    _offset += 2;
    _need(length);
    final start = _offset;
    _offset += length;
    return utf8.decode(Uint8List.sublistView(_bytes, start, _offset));
  }

  void _need(int length) {
    if (_offset + length > _bytes.length) {
      throw FormatException(
        'sync packet ends after ${_bytes.length} bytes, '
        '$length more expected at $_offset',
      );
    }
  }
}

List<SyncPacket> _packets(Uint8List body) {
  final data = ByteData.sublistView(body);
  final packets = <SyncPacket>[];
  var offset = 0;
  while (offset < body.length) {
    if (offset + _headerSize > body.length ||
        data.getUint16(offset) != _magic) {
      throw FormatException('no sync packet at byte $offset');
    }
    final length = data.getUint32(offset + 2);
    if (length < _headerSize || offset + length > body.length) {
      throw FormatException(
        'sync packet at byte $offset claims $length bytes, '
        '${body.length - offset} left',
      );
    }
    packets.add((
      type: data.getUint16(offset + 8),
      payload: Uint8List.sublistView(
        body,
        offset + _headerSize,
        offset + length,
      ),
    ));
    offset += length;
  }
  return packets;
}

List<int> _u16(int value) =>
    (ByteData(2)..setUint16(0, value)).buffer.asUint8List();

List<int> _u32(int value) =>
    (ByteData(4)..setUint32(0, value)).buffer.asUint8List();

List<int> _i64(int value) =>
    (ByteData(8)..setInt64(0, value)).buffer.asUint8List();
