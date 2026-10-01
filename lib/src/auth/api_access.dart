import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/auth/session_cookies.dart';

part 'api_access.mapper.dart';

@MappableClass()
class ApiAccess with ApiAccessMappable {
  const ApiAccess({
    required this.cookies,
    required this.authorization,
    required this.userId,
    required this.expiresAt,
  });

  final MfpSessionCookies cookies;
  final String authorization;
  final String userId;
  final DateTime expiresAt;
}
