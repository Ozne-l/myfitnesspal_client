// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'foods_response.dart';

class FoodsResponseMapper extends ClassMapperBase<FoodsResponse> {
  FoodsResponseMapper._();

  static FoodsResponseMapper? _instance;
  static FoodsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodsResponseMapper._());
      MfpFoodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodsResponse';

  static List<MfpFood> _$items(FoodsResponse v) => v.items;
  static const Field<FoodsResponse, List<MfpFood>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<FoodsResponse> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static FoodsResponse _instantiate(DecodingData data) {
    return FoodsResponse(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static FoodsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodsResponse>(map);
  }

  static FoodsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<FoodsResponse>(json);
  }
}

mixin FoodsResponseMappable {
  String toJson() {
    return FoodsResponseMapper.ensureInitialized().encodeJson<FoodsResponse>(
      this as FoodsResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return FoodsResponseMapper.ensureInitialized().encodeMap<FoodsResponse>(
      this as FoodsResponse,
    );
  }

  FoodsResponseCopyWith<FoodsResponse, FoodsResponse, FoodsResponse>
  get copyWith => _FoodsResponseCopyWithImpl<FoodsResponse, FoodsResponse>(
    this as FoodsResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FoodsResponseMapper.ensureInitialized().stringifyValue(
      this as FoodsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodsResponseMapper.ensureInitialized().equalsValue(
      this as FoodsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodsResponseMapper.ensureInitialized().hashValue(
      this as FoodsResponse,
    );
  }
}

extension FoodsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodsResponse, $Out> {
  FoodsResponseCopyWith<$R, FoodsResponse, $Out> get $asFoodsResponse =>
      $base.as((v, t, t2) => _FoodsResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodsResponseCopyWith<$R, $In extends FoodsResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MfpFood, MfpFoodCopyWith<$R, MfpFood, MfpFood>> get items;
  $R call({List<MfpFood>? items});
  FoodsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FoodsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodsResponse, $Out>
    implements FoodsResponseCopyWith<$R, FoodsResponse, $Out> {
  _FoodsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodsResponse> $mapper =
      FoodsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MfpFood, MfpFoodCopyWith<$R, MfpFood, MfpFood>> get items =>
      ListCopyWith(
        $value.items,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(items: v),
      );
  @override
  $R call({List<MfpFood>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  FoodsResponse $make(CopyWithData data) =>
      FoodsResponse(items: data.get(#items, or: $value.items));

  @override
  FoodsResponseCopyWith<$R2, FoodsResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

