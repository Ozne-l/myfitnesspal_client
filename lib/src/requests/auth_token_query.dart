import 'package:dart_mappable/dart_mappable.dart';

part 'auth_token_query.mapper.dart';

@MappableClass()
class AuthTokenQuery with AuthTokenQueryMappable {
  const AuthTokenQuery({this.refresh = true});

  final bool refresh;
}
