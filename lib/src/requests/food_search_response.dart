import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';
import 'package:myfitnesspal_client/src/requests/food_search_hit.dart';

part 'food_search_response.mapper.dart';

@MappableClass()
class FoodSearchResponse with FoodSearchResponseMappable {
  const FoodSearchResponse({this.items = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<FoodSearchHit> items;
}
