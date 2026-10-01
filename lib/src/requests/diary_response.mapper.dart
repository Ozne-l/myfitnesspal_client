// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_response.dart';

class DiaryResponseMapper extends ClassMapperBase<DiaryResponse> {
  DiaryResponseMapper._();

  static DiaryResponseMapper? _instance;
  static DiaryResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiaryResponseMapper._());
      MfpDiaryItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiaryResponse';

  static List<MfpDiaryItem> _$items(DiaryResponse v) => v.items;
  static const Field<DiaryResponse, List<MfpDiaryItem>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<DiaryResponse> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static DiaryResponse _instantiate(DecodingData data) {
    return DiaryResponse(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static DiaryResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiaryResponse>(map);
  }

  static DiaryResponse fromJson(String json) {
    return ensureInitialized().decodeJson<DiaryResponse>(json);
  }
}

mixin DiaryResponseMappable {
  String toJson() {
    return DiaryResponseMapper.ensureInitialized().encodeJson<DiaryResponse>(
      this as DiaryResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return DiaryResponseMapper.ensureInitialized().encodeMap<DiaryResponse>(
      this as DiaryResponse,
    );
  }

  DiaryResponseCopyWith<DiaryResponse, DiaryResponse, DiaryResponse>
  get copyWith => _DiaryResponseCopyWithImpl<DiaryResponse, DiaryResponse>(
    this as DiaryResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return DiaryResponseMapper.ensureInitialized().stringifyValue(
      this as DiaryResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiaryResponseMapper.ensureInitialized().equalsValue(
      this as DiaryResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return DiaryResponseMapper.ensureInitialized().hashValue(
      this as DiaryResponse,
    );
  }
}

extension DiaryResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiaryResponse, $Out> {
  DiaryResponseCopyWith<$R, DiaryResponse, $Out> get $asDiaryResponse =>
      $base.as((v, t, t2) => _DiaryResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiaryResponseCopyWith<$R, $In extends DiaryResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MfpDiaryItem,
    MfpDiaryItemCopyWith<$R, MfpDiaryItem, MfpDiaryItem>
  >
  get items;
  $R call({List<MfpDiaryItem>? items});
  DiaryResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiaryResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiaryResponse, $Out>
    implements DiaryResponseCopyWith<$R, DiaryResponse, $Out> {
  _DiaryResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiaryResponse> $mapper =
      DiaryResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MfpDiaryItem,
    MfpDiaryItemCopyWith<$R, MfpDiaryItem, MfpDiaryItem>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<MfpDiaryItem>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  DiaryResponse $make(CopyWithData data) =>
      DiaryResponse(items: data.get(#items, or: $value.items));

  @override
  DiaryResponseCopyWith<$R2, DiaryResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DiaryResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

