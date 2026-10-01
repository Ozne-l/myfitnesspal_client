// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'add_diary_items_request.dart';

class AddDiaryItemsRequestMapper extends ClassMapperBase<AddDiaryItemsRequest> {
  AddDiaryItemsRequestMapper._();

  static AddDiaryItemsRequestMapper? _instance;
  static AddDiaryItemsRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddDiaryItemsRequestMapper._());
      FoodEntryRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AddDiaryItemsRequest';

  static List<FoodEntryRequest> _$items(AddDiaryItemsRequest v) => v.items;
  static const Field<AddDiaryItemsRequest, List<FoodEntryRequest>> _f$items =
      Field('items', _$items);

  @override
  final MappableFields<AddDiaryItemsRequest> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static AddDiaryItemsRequest _instantiate(DecodingData data) {
    return AddDiaryItemsRequest(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static AddDiaryItemsRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddDiaryItemsRequest>(map);
  }

  static AddDiaryItemsRequest fromJson(String json) {
    return ensureInitialized().decodeJson<AddDiaryItemsRequest>(json);
  }
}

mixin AddDiaryItemsRequestMappable {
  String toJson() {
    return AddDiaryItemsRequestMapper.ensureInitialized()
        .encodeJson<AddDiaryItemsRequest>(this as AddDiaryItemsRequest);
  }

  Map<String, dynamic> toMap() {
    return AddDiaryItemsRequestMapper.ensureInitialized()
        .encodeMap<AddDiaryItemsRequest>(this as AddDiaryItemsRequest);
  }

  AddDiaryItemsRequestCopyWith<
    AddDiaryItemsRequest,
    AddDiaryItemsRequest,
    AddDiaryItemsRequest
  >
  get copyWith =>
      _AddDiaryItemsRequestCopyWithImpl<
        AddDiaryItemsRequest,
        AddDiaryItemsRequest
      >(this as AddDiaryItemsRequest, $identity, $identity);
  @override
  String toString() {
    return AddDiaryItemsRequestMapper.ensureInitialized().stringifyValue(
      this as AddDiaryItemsRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return AddDiaryItemsRequestMapper.ensureInitialized().equalsValue(
      this as AddDiaryItemsRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return AddDiaryItemsRequestMapper.ensureInitialized().hashValue(
      this as AddDiaryItemsRequest,
    );
  }
}

extension AddDiaryItemsRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddDiaryItemsRequest, $Out> {
  AddDiaryItemsRequestCopyWith<$R, AddDiaryItemsRequest, $Out>
  get $asAddDiaryItemsRequest => $base.as(
    (v, t, t2) => _AddDiaryItemsRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AddDiaryItemsRequestCopyWith<
  $R,
  $In extends AddDiaryItemsRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    FoodEntryRequest,
    FoodEntryRequestCopyWith<$R, FoodEntryRequest, FoodEntryRequest>
  >
  get items;
  $R call({List<FoodEntryRequest>? items});
  AddDiaryItemsRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AddDiaryItemsRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddDiaryItemsRequest, $Out>
    implements AddDiaryItemsRequestCopyWith<$R, AddDiaryItemsRequest, $Out> {
  _AddDiaryItemsRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddDiaryItemsRequest> $mapper =
      AddDiaryItemsRequestMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    FoodEntryRequest,
    FoodEntryRequestCopyWith<$R, FoodEntryRequest, FoodEntryRequest>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<FoodEntryRequest>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  AddDiaryItemsRequest $make(CopyWithData data) =>
      AddDiaryItemsRequest(items: data.get(#items, or: $value.items));

  @override
  AddDiaryItemsRequestCopyWith<$R2, AddDiaryItemsRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AddDiaryItemsRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

