// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_search_response.dart';

class FoodSearchResponseMapper extends ClassMapperBase<FoodSearchResponse> {
  FoodSearchResponseMapper._();

  static FoodSearchResponseMapper? _instance;
  static FoodSearchResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodSearchResponseMapper._());
      FoodSearchHitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodSearchResponse';

  static List<FoodSearchHit> _$items(FoodSearchResponse v) => v.items;
  static const Field<FoodSearchResponse, List<FoodSearchHit>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<FoodSearchResponse> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static FoodSearchResponse _instantiate(DecodingData data) {
    return FoodSearchResponse(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static FoodSearchResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodSearchResponse>(map);
  }

  static FoodSearchResponse fromJson(String json) {
    return ensureInitialized().decodeJson<FoodSearchResponse>(json);
  }
}

mixin FoodSearchResponseMappable {
  String toJson() {
    return FoodSearchResponseMapper.ensureInitialized()
        .encodeJson<FoodSearchResponse>(this as FoodSearchResponse);
  }

  Map<String, dynamic> toMap() {
    return FoodSearchResponseMapper.ensureInitialized()
        .encodeMap<FoodSearchResponse>(this as FoodSearchResponse);
  }

  FoodSearchResponseCopyWith<
    FoodSearchResponse,
    FoodSearchResponse,
    FoodSearchResponse
  >
  get copyWith =>
      _FoodSearchResponseCopyWithImpl<FoodSearchResponse, FoodSearchResponse>(
        this as FoodSearchResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodSearchResponseMapper.ensureInitialized().stringifyValue(
      this as FoodSearchResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodSearchResponseMapper.ensureInitialized().equalsValue(
      this as FoodSearchResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodSearchResponseMapper.ensureInitialized().hashValue(
      this as FoodSearchResponse,
    );
  }
}

extension FoodSearchResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodSearchResponse, $Out> {
  FoodSearchResponseCopyWith<$R, FoodSearchResponse, $Out>
  get $asFoodSearchResponse => $base.as(
    (v, t, t2) => _FoodSearchResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FoodSearchResponseCopyWith<
  $R,
  $In extends FoodSearchResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    FoodSearchHit,
    FoodSearchHitCopyWith<$R, FoodSearchHit, FoodSearchHit>
  >
  get items;
  $R call({List<FoodSearchHit>? items});
  FoodSearchResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FoodSearchResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodSearchResponse, $Out>
    implements FoodSearchResponseCopyWith<$R, FoodSearchResponse, $Out> {
  _FoodSearchResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodSearchResponse> $mapper =
      FoodSearchResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    FoodSearchHit,
    FoodSearchHitCopyWith<$R, FoodSearchHit, FoodSearchHit>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<FoodSearchHit>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  FoodSearchResponse $make(CopyWithData data) =>
      FoodSearchResponse(items: data.get(#items, or: $value.items));

  @override
  FoodSearchResponseCopyWith<$R2, FoodSearchResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodSearchResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

