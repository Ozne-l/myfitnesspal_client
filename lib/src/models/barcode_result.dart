import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/food.dart';

part 'barcode_result.mapper.dart';

@MappableClass(discriminatorKey: 'kind')
sealed class MfpBarcodeResult with MfpBarcodeResultMappable {
  const MfpBarcodeResult(this.barcode);

  final String barcode;
}

@MappableClass()
final class MfpBarcodeFound extends MfpBarcodeResult
    with MfpBarcodeFoundMappable {
  const MfpBarcodeFound(super.barcode, this.food);

  final MfpFood food;
}

@MappableClass()
final class MfpBarcodeUnknown extends MfpBarcodeResult
    with MfpBarcodeUnknownMappable {
  const MfpBarcodeUnknown(super.barcode);
}

@MappableClass()
final class MfpBarcodeUnresolved extends MfpBarcodeResult
    with MfpBarcodeUnresolvedMappable {
  const MfpBarcodeUnresolved(
    super.barcode, {
    required this.foodId,
    required this.description,
    this.brandName,
  });

  final String foodId;
  final String description;
  final String? brandName;
}
