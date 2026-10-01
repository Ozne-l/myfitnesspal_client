import 'package:myfitnesspal_client/src/decoding.dart';
import 'package:myfitnesspal_client/src/http_method.dart';
import 'package:myfitnesspal_client/src/models/diary_day.dart';
import 'package:myfitnesspal_client/src/models/diary_item.dart';
import 'package:myfitnesspal_client/src/models/food.dart';
import 'package:myfitnesspal_client/src/models/serving_size.dart';
import 'package:myfitnesspal_client/src/requests/add_diary_items_request.dart';
import 'package:myfitnesspal_client/src/requests/created_items_response.dart';
import 'package:myfitnesspal_client/src/requests/diary_item_type.dart';
import 'package:myfitnesspal_client/src/requests/diary_query.dart';
import 'package:myfitnesspal_client/src/requests/diary_response.dart';
import 'package:myfitnesspal_client/src/requests/food_entry_request.dart';
import 'package:myfitnesspal_client/src/requests/food_version_request.dart';
import 'package:myfitnesspal_client/src/requests/serving_size_request.dart';
import 'package:myfitnesspal_client/src/requests/user_query.dart';
import 'package:myfitnesspal_client/src/requests/user_response.dart';
import 'package:myfitnesspal_client/src/transport.dart';

final class MfpDiary {
  const MfpDiary(this._transport);

  static const _diary = '/v2/diary';
  static const _users = '/v2/users';
  static const _typeSeparator = ',';

  final MfpTransport _transport;

  Future<MfpDiaryDay> forDate(DateTime date) async {
    final response = DiaryResponseMapper.fromMap(
      asMap(
        await _transport.request(
          HttpMethod.get,
          _diary,
          query: DiaryQuery(
            entryDate: formatMfpDate(date),
            types: [
              DiaryItemType.foodEntry,
              DiaryItemType.diaryMeal,
            ].map((type) => type.toValue()).join(_typeSeparator),
          ).toMap(),
        ),
      ),
    );
    final entries = <MfpFoodEntry>[];
    final mealTotals = <MfpMealTotals>[];
    for (final item in response.items) {
      switch (item) {
        case final MfpFoodEntry entry:
          entries.add(entry);
        case final MfpMealTotals totals:
          mealTotals.add(totals);
        case MfpOtherDiaryItem():
          break;
      }
    }
    return MfpDiaryDay(
      date: DateTime.utc(date.year, date.month, date.day),
      entries: entries,
      mealTotals: mealTotals,
    );
  }

  Future<List<String>> mealNames() async {
    final userId = await _transport.userId();
    return UserResponseMapper.fromMap(
      asMap(
        await _transport.request(
          HttpMethod.get,
          '$_users/$userId',
          query: const UserQuery().toMap(),
        ),
      ),
    ).item.diaryPreferences.mealNames;
  }

  Future<String?> addFood({
    required DateTime date,
    required String mealName,
    required MfpFood food,
    required MfpServingSize servingSize,
    double servings = 1,
  }) async {
    final response = CreatedItemsResponseMapper.fromMap(
      asMap(
        await _transport.request(
          HttpMethod.post,
          _diary,
          body: AddDiaryItemsRequest(
            items: [
              FoodEntryRequest(
                date: formatMfpDate(date),
                mealName: mealName,
                servings: servings,
                food: FoodVersionRequest(id: food.id, version: food.version),
                servingSize: ServingSizeRequest(
                  value: servingSize.value,
                  unit: servingSize.unit,
                  nutritionMultiplier: servingSize.nutritionMultiplier,
                ),
              ),
            ],
          ).toMap(),
        ),
      ),
    );
    return response.items.firstOrNull?.id;
  }

  Future<void> remove(String entryId) =>
      _transport.request(HttpMethod.delete, '$_diary/$entryId');
}
