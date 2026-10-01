import 'package:dart_mappable/dart_mappable.dart';

part 'error_response.mapper.dart';

@MappableClass()
class ErrorResponse with ErrorResponseMappable {
  const ErrorResponse({this.error, this.errorDescription, this.errorDetails});

  final String? error;
  final String? errorDescription;
  final Map<String, Object?>? errorDetails;

  List<String> get messages => [
    ?error,
    ?errorDescription,
    for (final MapEntry(:key, :value) in errorDetails?.entries ?? const [])
      '$key: $value',
  ];
}
