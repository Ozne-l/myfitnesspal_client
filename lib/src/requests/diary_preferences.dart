import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';

part 'diary_preferences.mapper.dart';

@MappableClass()
class DiaryPreferences with DiaryPreferencesMappable {
  const DiaryPreferences({this.mealNames = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<String> mealNames;
}
