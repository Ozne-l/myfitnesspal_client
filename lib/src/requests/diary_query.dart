import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/requests/diary_field.dart';

part 'diary_query.mapper.dart';

@MappableClass()
class DiaryQuery with DiaryQueryMappable {
  const DiaryQuery({
    required this.entryDate,
    required this.types,
    this.fieldList = const [DiaryField.all],
    this.fields = DiaryField.all,
  });

  final String entryDate;
  final String types;

  @MappableField(key: 'fields[]')
  final List<DiaryField> fieldList;

  final DiaryField fields;
}
