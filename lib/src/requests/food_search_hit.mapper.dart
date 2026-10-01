// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_search_hit.dart';

class FoodSearchHitMapper extends ClassMapperBase<FoodSearchHit> {
  FoodSearchHitMapper._();

  static FoodSearchHitMapper? _instance;
  static FoodSearchHitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodSearchHitMapper._());
      FoodHitMapper.ensureInitialized();
      OtherHitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodSearchHit';

  @override
  final MappableFields<FoodSearchHit> fields = const {};
  @override
  final bool ignoreNull = true;

  static FoodSearchHit _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'FoodSearchHit',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FoodSearchHit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodSearchHit>(map);
  }

  static FoodSearchHit fromJson(String json) {
    return ensureInitialized().decodeJson<FoodSearchHit>(json);
  }
}

mixin FoodSearchHitMappable {
  String toJson();
  Map<String, dynamic> toMap();
  FoodSearchHitCopyWith<FoodSearchHit, FoodSearchHit, FoodSearchHit>
  get copyWith;
}

abstract class FoodSearchHitCopyWith<$R, $In extends FoodSearchHit, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  FoodSearchHitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class FoodHitMapper extends SubClassMapperBase<FoodHit> {
  FoodHitMapper._();

  static FoodHitMapper? _instance;
  static FoodHitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodHitMapper._());
      FoodSearchHitMapper.ensureInitialized().addSubMapper(_instance!);
      MfpFoodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodHit';

  static MfpFood _$item(FoodHit v) => v.item;
  static const Field<FoodHit, MfpFood> _f$item = Field('item', _$item);

  @override
  final MappableFields<FoodHit> fields = const {#item: _f$item};
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'food';
  @override
  late final ClassMapperBase superMapper =
      FoodSearchHitMapper.ensureInitialized();

  static FoodHit _instantiate(DecodingData data) {
    return FoodHit(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static FoodHit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodHit>(map);
  }

  static FoodHit fromJson(String json) {
    return ensureInitialized().decodeJson<FoodHit>(json);
  }
}

mixin FoodHitMappable {
  String toJson() {
    return FoodHitMapper.ensureInitialized().encodeJson<FoodHit>(
      this as FoodHit,
    );
  }

  Map<String, dynamic> toMap() {
    return FoodHitMapper.ensureInitialized().encodeMap<FoodHit>(
      this as FoodHit,
    );
  }

  FoodHitCopyWith<FoodHit, FoodHit, FoodHit> get copyWith =>
      _FoodHitCopyWithImpl<FoodHit, FoodHit>(
        this as FoodHit,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodHitMapper.ensureInitialized().stringifyValue(this as FoodHit);
  }

  @override
  bool operator ==(Object other) {
    return FoodHitMapper.ensureInitialized().equalsValue(
      this as FoodHit,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodHitMapper.ensureInitialized().hashValue(this as FoodHit);
  }
}

extension FoodHitValueCopy<$R, $Out> on ObjectCopyWith<$R, FoodHit, $Out> {
  FoodHitCopyWith<$R, FoodHit, $Out> get $asFoodHit =>
      $base.as((v, t, t2) => _FoodHitCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodHitCopyWith<$R, $In extends FoodHit, $Out>
    implements FoodSearchHitCopyWith<$R, $In, $Out> {
  MfpFoodCopyWith<$R, MfpFood, MfpFood> get item;
  @override
  $R call({MfpFood? item});
  FoodHitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FoodHitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodHit, $Out>
    implements FoodHitCopyWith<$R, FoodHit, $Out> {
  _FoodHitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodHit> $mapper =
      FoodHitMapper.ensureInitialized();
  @override
  MfpFoodCopyWith<$R, MfpFood, MfpFood> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({MfpFood? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  FoodHit $make(CopyWithData data) =>
      FoodHit(item: data.get(#item, or: $value.item));

  @override
  FoodHitCopyWith<$R2, FoodHit, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FoodHitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OtherHitMapper extends SubClassMapperBase<OtherHit> {
  OtherHitMapper._();

  static OtherHitMapper? _instance;
  static OtherHitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OtherHitMapper._());
      FoodSearchHitMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'OtherHit';

  @override
  final MappableFields<OtherHit> fields = const {};
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper =
      FoodSearchHitMapper.ensureInitialized();

  static OtherHit _instantiate(DecodingData data) {
    return OtherHit();
  }

  @override
  final Function instantiate = _instantiate;

  static OtherHit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OtherHit>(map);
  }

  static OtherHit fromJson(String json) {
    return ensureInitialized().decodeJson<OtherHit>(json);
  }
}

mixin OtherHitMappable {
  String toJson() {
    return OtherHitMapper.ensureInitialized().encodeJson<OtherHit>(
      this as OtherHit,
    );
  }

  Map<String, dynamic> toMap() {
    return OtherHitMapper.ensureInitialized().encodeMap<OtherHit>(
      this as OtherHit,
    );
  }

  OtherHitCopyWith<OtherHit, OtherHit, OtherHit> get copyWith =>
      _OtherHitCopyWithImpl<OtherHit, OtherHit>(
        this as OtherHit,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OtherHitMapper.ensureInitialized().stringifyValue(this as OtherHit);
  }

  @override
  bool operator ==(Object other) {
    return OtherHitMapper.ensureInitialized().equalsValue(
      this as OtherHit,
      other,
    );
  }

  @override
  int get hashCode {
    return OtherHitMapper.ensureInitialized().hashValue(this as OtherHit);
  }
}

extension OtherHitValueCopy<$R, $Out> on ObjectCopyWith<$R, OtherHit, $Out> {
  OtherHitCopyWith<$R, OtherHit, $Out> get $asOtherHit =>
      $base.as((v, t, t2) => _OtherHitCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OtherHitCopyWith<$R, $In extends OtherHit, $Out>
    implements FoodSearchHitCopyWith<$R, $In, $Out> {
  @override
  $R call();
  OtherHitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OtherHitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OtherHit, $Out>
    implements OtherHitCopyWith<$R, OtherHit, $Out> {
  _OtherHitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OtherHit> $mapper =
      OtherHitMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  OtherHit $make(CopyWithData data) => OtherHit();

  @override
  OtherHitCopyWith<$R2, OtherHit, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OtherHitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

