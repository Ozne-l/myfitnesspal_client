// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food.dart';

class MfpFoodMapper extends ClassMapperBase<MfpFood> {
  MfpFoodMapper._();

  static MfpFoodMapper? _instance;
  static MfpFoodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpFoodMapper._());
      MfpServingSizeMapper.ensureInitialized();
      MfpNutrientsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpFood';

  static String _$id(MfpFood v) => v.id;
  static const Field<MfpFood, String> _f$id = Field('id', _$id);
  static String _$version(MfpFood v) => v.version;
  static const Field<MfpFood, String> _f$version = Field('version', _$version);
  static String _$description(MfpFood v) => v.description;
  static const Field<MfpFood, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$brandName(MfpFood v) => v.brandName;
  static const Field<MfpFood, String> _f$brandName = Field(
    'brandName',
    _$brandName,
    key: r'brand_name',
    opt: true,
  );
  static bool? _$verified(MfpFood v) => v.verified;
  static const Field<MfpFood, bool> _f$verified = Field(
    'verified',
    _$verified,
    opt: true,
  );
  static bool? _$isPublic(MfpFood v) => v.isPublic;
  static const Field<MfpFood, bool> _f$isPublic = Field(
    'isPublic',
    _$isPublic,
    key: r'public',
    opt: true,
  );
  static String? _$countryCode(MfpFood v) => v.countryCode;
  static const Field<MfpFood, String> _f$countryCode = Field(
    'countryCode',
    _$countryCode,
    key: r'country_code',
    opt: true,
  );
  static List<MfpServingSize> _$servingSizes(MfpFood v) => v.servingSizes;
  static const Field<MfpFood, List<MfpServingSize>> _f$servingSizes = Field(
    'servingSizes',
    _$servingSizes,
    key: r'serving_sizes',
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );
  static MfpNutrients? _$nutrients(MfpFood v) => v.nutrients;
  static const Field<MfpFood, MfpNutrients> _f$nutrients = Field(
    'nutrients',
    _$nutrients,
    key: r'nutritional_contents',
    opt: true,
  );

  @override
  final MappableFields<MfpFood> fields = const {
    #id: _f$id,
    #version: _f$version,
    #description: _f$description,
    #brandName: _f$brandName,
    #verified: _f$verified,
    #isPublic: _f$isPublic,
    #countryCode: _f$countryCode,
    #servingSizes: _f$servingSizes,
    #nutrients: _f$nutrients,
  };
  @override
  final bool ignoreNull = true;

  static MfpFood _instantiate(DecodingData data) {
    return MfpFood(
      id: data.dec(_f$id),
      version: data.dec(_f$version),
      description: data.dec(_f$description),
      brandName: data.dec(_f$brandName),
      verified: data.dec(_f$verified),
      isPublic: data.dec(_f$isPublic),
      countryCode: data.dec(_f$countryCode),
      servingSizes: data.dec(_f$servingSizes),
      nutrients: data.dec(_f$nutrients),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpFood fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpFood>(map);
  }

  static MfpFood fromJson(String json) {
    return ensureInitialized().decodeJson<MfpFood>(json);
  }
}

mixin MfpFoodMappable {
  String toJson() {
    return MfpFoodMapper.ensureInitialized().encodeJson<MfpFood>(
      this as MfpFood,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpFoodMapper.ensureInitialized().encodeMap<MfpFood>(
      this as MfpFood,
    );
  }

  MfpFoodCopyWith<MfpFood, MfpFood, MfpFood> get copyWith =>
      _MfpFoodCopyWithImpl<MfpFood, MfpFood>(
        this as MfpFood,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpFoodMapper.ensureInitialized().stringifyValue(this as MfpFood);
  }

  @override
  bool operator ==(Object other) {
    return MfpFoodMapper.ensureInitialized().equalsValue(
      this as MfpFood,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpFoodMapper.ensureInitialized().hashValue(this as MfpFood);
  }
}

extension MfpFoodValueCopy<$R, $Out> on ObjectCopyWith<$R, MfpFood, $Out> {
  MfpFoodCopyWith<$R, MfpFood, $Out> get $asMfpFood =>
      $base.as((v, t, t2) => _MfpFoodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpFoodCopyWith<$R, $In extends MfpFood, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MfpServingSize,
    MfpServingSizeCopyWith<$R, MfpServingSize, MfpServingSize>
  >
  get servingSizes;
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients>? get nutrients;
  $R call({
    String? id,
    String? version,
    String? description,
    String? brandName,
    bool? verified,
    bool? isPublic,
    String? countryCode,
    List<MfpServingSize>? servingSizes,
    MfpNutrients? nutrients,
  });
  MfpFoodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpFoodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpFood, $Out>
    implements MfpFoodCopyWith<$R, MfpFood, $Out> {
  _MfpFoodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpFood> $mapper =
      MfpFoodMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MfpServingSize,
    MfpServingSizeCopyWith<$R, MfpServingSize, MfpServingSize>
  >
  get servingSizes => ListCopyWith(
    $value.servingSizes,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(servingSizes: v),
  );
  @override
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients>? get nutrients =>
      $value.nutrients?.copyWith.$chain((v) => call(nutrients: v));
  @override
  $R call({
    String? id,
    String? version,
    String? description,
    Object? brandName = $none,
    Object? verified = $none,
    Object? isPublic = $none,
    Object? countryCode = $none,
    List<MfpServingSize>? servingSizes,
    Object? nutrients = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (version != null) #version: version,
      if (description != null) #description: description,
      if (brandName != $none) #brandName: brandName,
      if (verified != $none) #verified: verified,
      if (isPublic != $none) #isPublic: isPublic,
      if (countryCode != $none) #countryCode: countryCode,
      if (servingSizes != null) #servingSizes: servingSizes,
      if (nutrients != $none) #nutrients: nutrients,
    }),
  );
  @override
  MfpFood $make(CopyWithData data) => MfpFood(
    id: data.get(#id, or: $value.id),
    version: data.get(#version, or: $value.version),
    description: data.get(#description, or: $value.description),
    brandName: data.get(#brandName, or: $value.brandName),
    verified: data.get(#verified, or: $value.verified),
    isPublic: data.get(#isPublic, or: $value.isPublic),
    countryCode: data.get(#countryCode, or: $value.countryCode),
    servingSizes: data.get(#servingSizes, or: $value.servingSizes),
    nutrients: data.get(#nutrients, or: $value.nutrients),
  );

  @override
  MfpFoodCopyWith<$R2, MfpFood, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MfpFoodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

