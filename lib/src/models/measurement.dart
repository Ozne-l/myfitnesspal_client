import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';

part 'measurement.mapper.dart';

/// One measurement as `/v2/measurements` returns it.
///
/// [type] keeps the API's casing: `weight` for rows written through `/v2`,
/// `Weight` for rows written by the website. [unit] stays a string
/// (`kilograms`, `pounds`) so an unexpected unit never fails decoding.
@MappableClass()
class MfpMeasurement with MfpMeasurementMappable {
  const MfpMeasurement({
    required this.id,
    required this.type,
    required this.value,
    required this.unit,
    required this.date,
    this.updatedAt,
  });

  final String id;
  final String type;
  final double value;
  final String unit;

  @MappableField(hook: CalendarDateHook())
  final DateTime date;

  final DateTime? updatedAt;
}
