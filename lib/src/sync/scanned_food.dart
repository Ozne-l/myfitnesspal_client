import 'package:dart_mappable/dart_mappable.dart';

part 'scanned_food.mapper.dart';

@MappableClass()
class ScannedFood with ScannedFoodMappable {
  const ScannedFood({
    required this.uid,
    required this.description,
    this.originalUid,
    this.brandName,
  });

  final String uid;
  final String? originalUid;
  final String description;
  final String? brandName;

  String get foodId => originalUid ?? uid;
}
