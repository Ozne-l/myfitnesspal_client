import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/user_item.dart';

part 'user_response.mapper.dart';

@MappableClass()
class UserResponse with UserResponseMappable {
  const UserResponse({required this.item});

  final UserItem item;
}
