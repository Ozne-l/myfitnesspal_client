import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/diary_item.dart';

part 'diary_day.mapper.dart';

@MappableClass()
class MfpDiaryDay with MfpDiaryDayMappable {
  const MfpDiaryDay({
    required this.date,
    this.entries = const [],
    this.mealTotals = const [],
  });

  final DateTime date;
  final List<MfpFoodEntry> entries;
  final List<MfpMealTotals> mealTotals;
}
