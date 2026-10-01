import 'package:dart_mappable/dart_mappable.dart';

part 'serving_size_request.mapper.dart';

@MappableClass()
class ServingSizeRequest with ServingSizeRequestMappable {
  const ServingSizeRequest({
    required this.value,
    required this.unit,
    this.nutritionMultiplier,
  });

  final double value;
  final String unit;
  final double? nutritionMultiplier;
}
