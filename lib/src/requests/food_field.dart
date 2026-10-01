import 'package:dart_mappable/dart_mappable.dart';

part 'food_field.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum FoodField {
  id,
  version,
  description,
  brandName,
  servingSizes,
  nutritionalContents,
}
