import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';
import 'package:myfitnesspal_client/src/requests/created_item.dart';

part 'created_items_response.mapper.dart';

@MappableClass()
class CreatedItemsResponse with CreatedItemsResponseMappable {
  const CreatedItemsResponse({this.items = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<CreatedItem> items;
}
