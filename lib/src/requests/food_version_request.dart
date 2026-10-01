import 'package:dart_mappable/dart_mappable.dart';

part 'food_version_request.mapper.dart';

@MappableClass()
class FoodVersionRequest with FoodVersionRequestMappable {
  const FoodVersionRequest({required this.id, required this.version});

  final String id;
  final String version;
}
