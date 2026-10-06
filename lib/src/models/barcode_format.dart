import 'package:dart_mappable/dart_mappable.dart';

part 'barcode_format.mapper.dart';

@MappableEnum()
enum MfpBarcodeFormat {
  ean8(8),
  upcA(12),
  ean13(13),
  gtin14(14);

  const MfpBarcodeFormat(this.length);

  final int length;
}
