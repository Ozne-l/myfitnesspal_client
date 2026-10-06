import 'package:myfitnesspal_client/src/sync/scanned_food.dart';
import 'package:myfitnesspal_client/src/sync/sync_packets.dart';

const _barcodeType = 109;
const _foodType = 31;
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
