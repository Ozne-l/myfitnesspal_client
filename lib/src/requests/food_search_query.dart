import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/food_field.dart';
import 'package:myfitnesspal_client/src/requests/search_resource_type.dart';
import 'package:myfitnesspal_client/src/requests/search_scope.dart';

part 'food_search_query.mapper.dart';

@MappableClass()
class FoodSearchQuery with FoodSearchQueryMappable {
  const FoodSearchQuery({
    required this.q,
    required this.scope,
    required this.maxItems,
    this.countryCode,
    this.resourceTypes = const [SearchResourceType.foods],
    this.fields = FoodField.values,
  });

  final String q;
  final SearchScope scope;
  final int maxItems;
  final String? countryCode;

  @MappableField(key: 'resource_type[]')
  final List<SearchResourceType> resourceTypes;

  @MappableField(key: 'fields[]')
  final List<FoodField> fields;
}
