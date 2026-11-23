import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/measurement_request.dart';

part 'add_measurements_request.mapper.dart';

@MappableClass()
class AddMeasurementsRequest with AddMeasurementsRequestMappable {
  const AddMeasurementsRequest({required this.items});

  final List<MeasurementRequest> items;
}
