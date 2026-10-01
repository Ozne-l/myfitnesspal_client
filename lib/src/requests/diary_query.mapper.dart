// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_query.dart';

class DiaryQueryMapper extends ClassMapperBase<DiaryQuery> {
  DiaryQueryMapper._();

  static DiaryQueryMapper? _instance;
  static DiaryQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiaryQueryMapper._());
      DiaryFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiaryQuery';

  static String _$entryDate(DiaryQuery v) => v.entryDate;
  static const Field<DiaryQuery, String> _f$entryDate = Field(
    'entryDate',
    _$entryDate,
    key: r'entry_date',
  );
  static String _$types(DiaryQuery v) => v.types;
  static const Field<DiaryQuery, String> _f$types = Field('types', _$types);
  static List<DiaryField> _$fieldList(DiaryQuery v) => v.fieldList;
  static const Field<DiaryQuery, List<DiaryField>> _f$fieldList = Field(
    'fieldList',
    _$fieldList,
    key: r'fields[]',
    opt: true,
    def: const [DiaryField.all],
  );
  static DiaryField _$fields(DiaryQuery v) => v.fields;
  static const Field<DiaryQuery, DiaryField> _f$fields = Field(
    'fields',
    _$fields,
    opt: true,
    def: DiaryField.all,
  );

  @override
  final MappableFields<DiaryQuery> fields = const {
    #entryDate: _f$entryDate,
    #types: _f$types,
    #fieldList: _f$fieldList,
    #fields: _f$fields,
  };
  @override
  final bool ignoreNull = true;

  static DiaryQuery _instantiate(DecodingData data) {
    return DiaryQuery(
      entryDate: data.dec(_f$entryDate),
      types: data.dec(_f$types),
      fieldList: data.dec(_f$fieldList),
      fields: data.dec(_f$fields),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiaryQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiaryQuery>(map);
  }

  static DiaryQuery fromJson(String json) {
    return ensureInitialized().decodeJson<DiaryQuery>(json);
  }
}

mixin DiaryQueryMappable {
  String toJson() {
    return DiaryQueryMapper.ensureInitialized().encodeJson<DiaryQuery>(
      this as DiaryQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return DiaryQueryMapper.ensureInitialized().encodeMap<DiaryQuery>(
      this as DiaryQuery,
    );
  }

  DiaryQueryCopyWith<DiaryQuery, DiaryQuery, DiaryQuery> get copyWith =>
      _DiaryQueryCopyWithImpl<DiaryQuery, DiaryQuery>(
        this as DiaryQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DiaryQueryMapper.ensureInitialized().stringifyValue(
      this as DiaryQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiaryQueryMapper.ensureInitialized().equalsValue(
      this as DiaryQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return DiaryQueryMapper.ensureInitialized().hashValue(this as DiaryQuery);
  }
}

extension DiaryQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiaryQuery, $Out> {
  DiaryQueryCopyWith<$R, DiaryQuery, $Out> get $asDiaryQuery =>
      $base.as((v, t, t2) => _DiaryQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiaryQueryCopyWith<$R, $In extends DiaryQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DiaryField, ObjectCopyWith<$R, DiaryField, DiaryField>>
  get fieldList;
  $R call({
    String? entryDate,
    String? types,
    List<DiaryField>? fieldList,
    DiaryField? fields,
  });
  DiaryQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiaryQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiaryQuery, $Out>
    implements DiaryQueryCopyWith<$R, DiaryQuery, $Out> {
  _DiaryQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiaryQuery> $mapper =
      DiaryQueryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DiaryField, ObjectCopyWith<$R, DiaryField, DiaryField>>
  get fieldList => ListCopyWith(
    $value.fieldList,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(fieldList: v),
  );
  @override
  $R call({
    String? entryDate,
    String? types,
    List<DiaryField>? fieldList,
    DiaryField? fields,
  }) => $apply(
    FieldCopyWithData({
      if (entryDate != null) #entryDate: entryDate,
      if (types != null) #types: types,
      if (fieldList != null) #fieldList: fieldList,
      if (fields != null) #fields: fields,
    }),
  );
  @override
  DiaryQuery $make(CopyWithData data) => DiaryQuery(
    entryDate: data.get(#entryDate, or: $value.entryDate),
    types: data.get(#types, or: $value.types),
    fieldList: data.get(#fieldList, or: $value.fieldList),
    fields: data.get(#fields, or: $value.fields),
  );

  @override
  DiaryQueryCopyWith<$R2, DiaryQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DiaryQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

