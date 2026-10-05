import 'package:dart_mappable/dart_mappable.dart';

Map<String, dynamic> asMap(Object? json) => switch (json) {
  final Map<String, dynamic> map => map,
  _ => throw MapperException.unexpectedType(
    json.runtimeType,
    'Map<String, dynamic>',
  ),
};

String formatMfpDate(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';

T Function(Object? json) mapped<T>(
  T Function(Map<String, dynamic> map) fromMap,
) =>
    (json) => fromMap(asMap(json));

void ignoreBody(Object? json) {}
