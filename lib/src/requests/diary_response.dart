import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/diary_item.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';

part 'diary_response.mapper.dart';

@MappableClass()
class DiaryResponse with DiaryResponseMappable {
  const DiaryResponse({this.items = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<MfpDiaryItem> items;
}
