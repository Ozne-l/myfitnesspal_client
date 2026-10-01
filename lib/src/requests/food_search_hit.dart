import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/food.dart';

part 'food_search_hit.mapper.dart';

@MappableClass(discriminatorKey: 'type')
sealed class FoodSearchHit with FoodSearchHitMappable {
  const FoodSearchHit();
}

@MappableClass(discriminatorValue: 'food')
final class FoodHit extends FoodSearchHit with FoodHitMappable {
  const FoodHit({required this.item});

  final MfpFood item;
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
final class OtherHit extends FoodSearchHit with OtherHitMappable {
  const OtherHit();
}
