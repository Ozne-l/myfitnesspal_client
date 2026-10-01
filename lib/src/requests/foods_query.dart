import 'package:dart_mappable/dart_mappable.dart';

part 'foods_query.mapper.dart';

@MappableClass()
class FoodsQuery with FoodsQueryMappable {
  const FoodsQuery({required this.ids});

  final String ids;
}
