import 'package:dart_mappable/dart_mappable.dart';

part 'created_item.mapper.dart';

@MappableClass()
class CreatedItem with CreatedItemMappable {
  const CreatedItem({this.id});

  final String? id;
}
