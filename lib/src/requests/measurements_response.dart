import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';
import 'package:myfitnesspal_client/src/models/measurement.dart';

part 'measurements_response.mapper.dart';

@MappableClass()
class MeasurementsResponse with MeasurementsResponseMappable {
  const MeasurementsResponse({this.items = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<MfpMeasurement> items;
}
