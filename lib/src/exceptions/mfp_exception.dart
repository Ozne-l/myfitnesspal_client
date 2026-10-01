import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/exceptions/auth_failure.dart';
import 'package:myfitnesspal_client/src/exceptions/uri_mapper.dart';

part 'mfp_exception.mapper.dart';

@MappableClass(discriminatorKey: 'kind')
sealed class MfpException with MfpExceptionMappable implements Exception {
  const MfpException(this.errors);

  final List<String> errors;
}

@MappableClass()
final class MfpAuthException extends MfpException
    with MfpAuthExceptionMappable {
  const MfpAuthException(this.failure, [super.errors = const []]);

  final MfpAuthFailure failure;
}

@MappableClass(includeCustomMappers: [UriMapper()])
final class MfpApiException extends MfpException with MfpApiExceptionMappable {
  const MfpApiException({
    required this.method,
    required this.uri,
    required this.statusCode,
    List<String> errors = const [],
  }) : super(errors);

  final String method;
  final Uri uri;
  final int statusCode;
}
