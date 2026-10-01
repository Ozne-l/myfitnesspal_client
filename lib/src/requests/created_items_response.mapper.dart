// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'created_items_response.dart';

class CreatedItemsResponseMapper extends ClassMapperBase<CreatedItemsResponse> {
  CreatedItemsResponseMapper._();

  static CreatedItemsResponseMapper? _instance;
  static CreatedItemsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatedItemsResponseMapper._());
      CreatedItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreatedItemsResponse';

  static List<CreatedItem> _$items(CreatedItemsResponse v) => v.items;
  static const Field<CreatedItemsResponse, List<CreatedItem>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<CreatedItemsResponse> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static CreatedItemsResponse _instantiate(DecodingData data) {
    return CreatedItemsResponse(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatedItemsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatedItemsResponse>(map);
  }

  static CreatedItemsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<CreatedItemsResponse>(json);
  }
}

mixin CreatedItemsResponseMappable {
  String toJson() {
    return CreatedItemsResponseMapper.ensureInitialized()
        .encodeJson<CreatedItemsResponse>(this as CreatedItemsResponse);
  }

  Map<String, dynamic> toMap() {
    return CreatedItemsResponseMapper.ensureInitialized()
        .encodeMap<CreatedItemsResponse>(this as CreatedItemsResponse);
  }

  CreatedItemsResponseCopyWith<
    CreatedItemsResponse,
    CreatedItemsResponse,
    CreatedItemsResponse
  >
  get copyWith =>
      _CreatedItemsResponseCopyWithImpl<
        CreatedItemsResponse,
        CreatedItemsResponse
      >(this as CreatedItemsResponse, $identity, $identity);
  @override
  String toString() {
    return CreatedItemsResponseMapper.ensureInitialized().stringifyValue(
      this as CreatedItemsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return CreatedItemsResponseMapper.ensureInitialized().equalsValue(
      this as CreatedItemsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return CreatedItemsResponseMapper.ensureInitialized().hashValue(
      this as CreatedItemsResponse,
    );
  }
}

extension CreatedItemsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatedItemsResponse, $Out> {
  CreatedItemsResponseCopyWith<$R, CreatedItemsResponse, $Out>
  get $asCreatedItemsResponse => $base.as(
    (v, t, t2) => _CreatedItemsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CreatedItemsResponseCopyWith<
  $R,
  $In extends CreatedItemsResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CreatedItem,
    CreatedItemCopyWith<$R, CreatedItem, CreatedItem>
  >
  get items;
  $R call({List<CreatedItem>? items});
  CreatedItemsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CreatedItemsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatedItemsResponse, $Out>
    implements CreatedItemsResponseCopyWith<$R, CreatedItemsResponse, $Out> {
  _CreatedItemsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatedItemsResponse> $mapper =
      CreatedItemsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CreatedItem,
    CreatedItemCopyWith<$R, CreatedItem, CreatedItem>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<CreatedItem>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  CreatedItemsResponse $make(CopyWithData data) =>
      CreatedItemsResponse(items: data.get(#items, or: $value.items));

  @override
  CreatedItemsResponseCopyWith<$R2, CreatedItemsResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CreatedItemsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

