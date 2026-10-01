import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/diary_preferences.dart';

part 'user_item.mapper.dart';

@MappableClass()
class UserItem with UserItemMappable {
  const UserItem({required this.diaryPreferences});

  final DiaryPreferences diaryPreferences;
}
