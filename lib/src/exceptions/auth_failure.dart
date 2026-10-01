import 'package:dart_mappable/dart_mappable.dart';

part 'auth_failure.mapper.dart';

@MappableEnum()
enum MfpAuthFailure { notSignedIn, noSessionCookie, sessionExpired }
