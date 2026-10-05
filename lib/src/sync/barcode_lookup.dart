import 'package:myfitnesspal_client/src/sync/scanned_food.dart';
import 'package:myfitnesspal_client/src/sync/sync_packets.dart';

const _barcodeType = 109;
const _foodType = 31;
const _gtinLengths = {8, 12, 13, 14};
const _evenWeight = 3;
const _oddWeight = 1;
const _base = 10;
final _digits = RegExp(r'^\d+$');

String? barcodeProblem(String barcode) {
  if (!_digits.hasMatch(barcode)) return 'a barcode has digits only';
  if (!_gtinLengths.contains(barcode.length)) {
    return 'a barcode has 8, 12, 13 or 14 digits, not ${barcode.length}';
  }
  final expected = _checkDigit(barcode.substring(0, barcode.length - 1));
  final actual = barcode.codeUnitAt(barcode.length - 1) - _zero;
  return actual == expected
      ? null
      : 'check digit is $actual, $expected expected';
}

List<int> barcodeLookupPacket(String barcode) =>
    syncPacket(_barcodeType, syncString(barcode));

ScannedFood? scannedFoodFrom(List<SyncPacket> packets) {
  for (final (:type, :payload) in packets) {
    switch (type) {
      case _foodType:
        return _food(SyncReader(payload));
    }
  }
  return null;
}

ScannedFood _food(SyncReader reader) {
  reader.i64();
  final uid = reader.string();
  reader
    ..i64()
    ..i64();
  final originalUid = reader.string();
  reader
    ..i64()
    ..string();
  final description = reader.string();
  final brandName = reader.string();
  if (uid.isEmpty) throw const FormatException('food packet without a uid');
  return ScannedFood(
    uid: uid,
    originalUid: originalUid.isEmpty ? null : originalUid,
    description: description,
    brandName: brandName.isEmpty ? null : brandName,
  );
}

final int _zero = '0'.codeUnitAt(0);

int _checkDigit(String body) {
  var sum = 0;
  for (var i = 0; i < body.length; i++) {
    final digit = body.codeUnitAt(body.length - 1 - i) - _zero;
    sum += digit * (i.isEven ? _evenWeight : _oddWeight);
  }
  return (_base - sum % _base) % _base;
}
