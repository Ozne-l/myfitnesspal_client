import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/energy.dart';

part 'nutrients.mapper.dart';

@MappableClass()
class MfpNutrients with MfpNutrientsMappable {
  const MfpNutrients({
    this.energy,
    this.protein,
    this.carbohydrates,
    this.netCarbs,
    this.fiber,
    this.sugar,
    this.addedSugars,
    this.sugarAlcohols,
    this.fat,
    this.saturatedFat,
    this.monounsaturatedFat,
    this.polyunsaturatedFat,
    this.transFat,
    this.cholesterolMilligrams,
    this.sodiumMilligrams,
    this.potassiumMilligrams,
    this.vitaminA,
    this.vitaminC,
    this.vitaminD,
    this.calcium,
    this.iron,
  });

  final MfpEnergy? energy;
  final double? protein;
  final double? carbohydrates;
  final double? netCarbs;
  final double? fiber;
  final double? sugar;
  final double? addedSugars;
  final double? sugarAlcohols;
  final double? fat;
  final double? saturatedFat;
  final double? monounsaturatedFat;
  final double? polyunsaturatedFat;
  final double? transFat;

  @MappableField(key: 'cholesterol')
  final double? cholesterolMilligrams;

  @MappableField(key: 'sodium')
  final double? sodiumMilligrams;

  @MappableField(key: 'potassium')
  final double? potassiumMilligrams;

  final double? vitaminA;
  final double? vitaminC;
  final double? vitaminD;
  final double? calcium;
  final double? iron;
}
