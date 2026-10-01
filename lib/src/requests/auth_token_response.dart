import 'package:dart_mappable/dart_mappable.dart';

part 'auth_token_response.mapper.dart';

@MappableClass()
class AuthTokenResponse with AuthTokenResponseMappable {
  const AuthTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.userId,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String userId;
}
