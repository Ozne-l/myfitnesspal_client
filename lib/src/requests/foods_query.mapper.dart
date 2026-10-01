// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'foods_query.dart';

class FoodsQueryMapper extends ClassMapperBase<FoodsQuery> {
  FoodsQueryMapper._();

  static FoodsQueryMapper? _instance;
  static FoodsQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodsQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FoodsQuery';

  static String _$ids(FoodsQuery v) => v.ids;
  static const Field<FoodsQuery, String> _f$ids = Field('ids', _$ids);

  @override
  final MappableFields<FoodsQuery> fields = const {#ids: _f$ids};
  @override
  final bool ignoreNull = true;

  static FoodsQuery _instantiate(DecodingData data) {
    return FoodsQuery(ids: data.dec(_f$ids));
  }

  @override
  final Function instantiate = _instantiate;

  static FoodsQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodsQuery>(map);
  }

  static FoodsQuery fromJson(String json) {
    return ensureInitialized().decodeJson<FoodsQuery>(json);
  }
}

mixin FoodsQueryMappable {
  String toJson() {
    return FoodsQueryMapper.ensureInitialized().encodeJson<FoodsQuery>(
      this as FoodsQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return FoodsQueryMapper.ensureInitialized().encodeMap<FoodsQuery>(
      this as FoodsQuery,
    );
  }

  FoodsQueryCopyWith<FoodsQuery, FoodsQuery, FoodsQuery> get copyWith =>
      _FoodsQueryCopyWithImpl<FoodsQuery, FoodsQuery>(
        this as FoodsQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodsQueryMapper.ensureInitialized().stringifyValue(
      this as FoodsQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodsQueryMapper.ensureInitialized().equalsValue(
      this as FoodsQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodsQueryMapper.ensureInitialized().hashValue(this as FoodsQuery);
  }
}

extension FoodsQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodsQuery, $Out> {
  FoodsQueryCopyWith<$R, FoodsQuery, $Out> get $asFoodsQuery =>
      $base.as((v, t, t2) => _FoodsQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodsQueryCopyWith<$R, $In extends FoodsQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? ids});
  FoodsQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FoodsQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodsQuery, $Out>
    implements FoodsQueryCopyWith<$R, FoodsQuery, $Out> {
  _FoodsQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodsQuery> $mapper =
      FoodsQueryMapper.ensureInitialized();
  @override
  $R call({String? ids}) =>
      $apply(FieldCopyWithData({if (ids != null) #ids: ids}));
  @override
  FoodsQuery $make(CopyWithData data) =>
      FoodsQuery(ids: data.get(#ids, or: $value.ids));

  @override
  FoodsQueryCopyWith<$R2, FoodsQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodsQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

