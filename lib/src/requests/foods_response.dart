import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/food.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';

part 'foods_response.mapper.dart';

@MappableClass()
class FoodsResponse with FoodsResponseMappable {
  const FoodsResponse({this.items = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<MfpFood> items;
}
