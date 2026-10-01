import 'package:dart_mappable/dart_mappable.dart';

part 'serving_size.mapper.dart';

@MappableClass()
class MfpServingSize with MfpServingSizeMappable {
  const MfpServingSize({
    required this.value,
    required this.unit,
    this.nutritionMultiplier,
  });

  final double value;
  final String unit;
  final double? nutritionMultiplier;
}
