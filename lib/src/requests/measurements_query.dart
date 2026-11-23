import 'package:dart_mappable/dart_mappable.dart';

part 'measurements_query.mapper.dart';

@MappableClass()
class MeasurementsQuery with MeasurementsQueryMappable {
  const MeasurementsQuery({required this.entryDate, required this.types});

  final String entryDate;
  final String types;
}
