// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'measurements_query.dart';

class MeasurementsQueryMapper extends ClassMapperBase<MeasurementsQuery> {
  MeasurementsQueryMapper._();

  static MeasurementsQueryMapper? _instance;
  static MeasurementsQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MeasurementsQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MeasurementsQuery';

  static String _$entryDate(MeasurementsQuery v) => v.entryDate;
  static const Field<MeasurementsQuery, String> _f$entryDate = Field(
    'entryDate',
    _$entryDate,
    key: r'entry_date',
  );
  static String _$types(MeasurementsQuery v) => v.types;
  static const Field<MeasurementsQuery, String> _f$types = Field(
    'types',
    _$types,
  );

  @override
  final MappableFields<MeasurementsQuery> fields = const {
    #entryDate: _f$entryDate,
    #types: _f$types,
  };
  @override
  final bool ignoreNull = true;

  static MeasurementsQuery _instantiate(DecodingData data) {
    return MeasurementsQuery(
      entryDate: data.dec(_f$entryDate),
      types: data.dec(_f$types),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MeasurementsQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MeasurementsQuery>(map);
  }

  static MeasurementsQuery fromJson(String json) {
    return ensureInitialized().decodeJson<MeasurementsQuery>(json);
  }
}

mixin MeasurementsQueryMappable {
  String toJson() {
    return MeasurementsQueryMapper.ensureInitialized()
        .encodeJson<MeasurementsQuery>(this as MeasurementsQuery);
  }

  Map<String, dynamic> toMap() {
    return MeasurementsQueryMapper.ensureInitialized()
        .encodeMap<MeasurementsQuery>(this as MeasurementsQuery);
  }

  MeasurementsQueryCopyWith<
    MeasurementsQuery,
    MeasurementsQuery,
    MeasurementsQuery
  >
  get copyWith =>
      _MeasurementsQueryCopyWithImpl<MeasurementsQuery, MeasurementsQuery>(
        this as MeasurementsQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MeasurementsQueryMapper.ensureInitialized().stringifyValue(
      this as MeasurementsQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return MeasurementsQueryMapper.ensureInitialized().equalsValue(
      this as MeasurementsQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return MeasurementsQueryMapper.ensureInitialized().hashValue(
      this as MeasurementsQuery,
    );
  }
}

extension MeasurementsQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MeasurementsQuery, $Out> {
  MeasurementsQueryCopyWith<$R, MeasurementsQuery, $Out>
  get $asMeasurementsQuery => $base.as(
    (v, t, t2) => _MeasurementsQueryCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MeasurementsQueryCopyWith<
  $R,
  $In extends MeasurementsQuery,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? entryDate, String? types});
  MeasurementsQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MeasurementsQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MeasurementsQuery, $Out>
    implements MeasurementsQueryCopyWith<$R, MeasurementsQuery, $Out> {
  _MeasurementsQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MeasurementsQuery> $mapper =
      MeasurementsQueryMapper.ensureInitialized();
  @override
  $R call({String? entryDate, String? types}) => $apply(
    FieldCopyWithData({
      if (entryDate != null) #entryDate: entryDate,
      if (types != null) #types: types,
    }),
  );
  @override
  MeasurementsQuery $make(CopyWithData data) => MeasurementsQuery(
    entryDate: data.get(#entryDate, or: $value.entryDate),
    types: data.get(#types, or: $value.types),
  );

  @override
  MeasurementsQueryCopyWith<$R2, MeasurementsQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MeasurementsQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

