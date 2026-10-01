import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/entry_food.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';
import 'package:myfitnesspal_client/src/models/nutrients.dart';
import 'package:myfitnesspal_client/src/models/serving_size.dart';

part 'diary_item.mapper.dart';

@MappableClass(discriminatorKey: 'type')
sealed class MfpDiaryItem with MfpDiaryItemMappable {
  const MfpDiaryItem();
}

@MappableClass(discriminatorValue: 'food_entry')
final class MfpFoodEntry extends MfpDiaryItem with MfpFoodEntryMappable {
  const MfpFoodEntry({
    required this.date,
    required this.mealName,
    required this.mealPosition,
    required this.servings,
    required this.servingSize,
    required this.food,
    required this.nutrients,
    this.id,
  });

  final String? id;

  @MappableField(hook: CalendarDateHook())
  final DateTime date;

  final String mealName;
  final int mealPosition;
  final double servings;
  final MfpServingSize servingSize;
  final MfpEntryFood food;

  @MappableField(key: 'nutritional_contents')
  final MfpNutrients nutrients;
}

@MappableClass(discriminatorValue: 'diary_meal')
final class MfpMealTotals extends MfpDiaryItem with MfpMealTotalsMappable {
  const MfpMealTotals({
    required this.date,
    required this.mealName,
    required this.nutrients,
  });

  @MappableField(hook: CalendarDateHook())
  final DateTime date;

  @MappableField(key: 'diary_meal')
  final String mealName;

  @MappableField(key: 'nutritional_contents')
  final MfpNutrients nutrients;
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
final class MfpOtherDiaryItem extends MfpDiaryItem
    with MfpOtherDiaryItemMappable {
  const MfpOtherDiaryItem();
}
