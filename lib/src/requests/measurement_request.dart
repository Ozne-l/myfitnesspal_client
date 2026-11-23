import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/weight_unit.dart';

part 'measurement_request.mapper.dart';

@MappableClass()
class MeasurementRequest with MeasurementRequestMappable {
  const MeasurementRequest({
    required this.type,
    required this.value,
    required this.unit,
    required this.date,
  });

  final String type;
  final double value;
  final MfpWeightUnit unit;
  final String date;
}
