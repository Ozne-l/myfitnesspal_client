import 'package:dart_mappable/dart_mappable.dart';

part 'entry_food.mapper.dart';

@MappableClass()
class MfpEntryFood with MfpEntryFoodMappable {
  const MfpEntryFood({
    required this.id,
    required this.description,
    this.version,
    this.brandName,
  });

  final String id;
  final String description;
  final String? version;
  final String? brandName;
}
