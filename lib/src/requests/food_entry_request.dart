import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/diary_item_type.dart';
import 'package:myfitnesspal_client/src/requests/food_version_request.dart';
import 'package:myfitnesspal_client/src/requests/serving_size_request.dart';

part 'food_entry_request.mapper.dart';

@MappableClass()
class FoodEntryRequest with FoodEntryRequestMappable {
  const FoodEntryRequest({
    required this.date,
    required this.mealName,
    required this.servings,
    required this.food,
    required this.servingSize,
    this.type = DiaryItemType.foodEntry,
  });

  final DiaryItemType type;
  final String date;
  final String mealName;
  final double servings;
  final FoodVersionRequest food;
  final ServingSizeRequest servingSize;
}
