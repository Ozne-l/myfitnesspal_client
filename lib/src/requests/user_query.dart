import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/user_field.dart';

part 'user_query.mapper.dart';

@MappableClass()
class UserQuery with UserQueryMappable {
  const UserQuery({this.fields = const [UserField.diaryPreferences]});

  @MappableField(key: 'fields[]')
  final List<UserField> fields;
}
