import 'package:dart_mappable/dart_mappable.dart';

class UriMapper extends SimpleMapper<Uri> {
  const UriMapper();

  @override
  Uri decode(Object value) => Uri.parse(value as String);

  @override
  Object encode(Uri self) => '$self';
}
