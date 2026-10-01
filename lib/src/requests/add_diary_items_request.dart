import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/food_entry_request.dart';

part 'add_diary_items_request.mapper.dart';

@MappableClass()
class AddDiaryItemsRequest with AddDiaryItemsRequestMappable {
  const AddDiaryItemsRequest({required this.items});

  final List<FoodEntryRequest> items;
}
