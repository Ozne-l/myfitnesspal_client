import 'package:dart_mappable/dart_mappable.dart';

part 'diary_item_type.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum DiaryItemType { foodEntry, diaryMeal }
