// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scanned_food.dart';

class ScannedFoodMapper extends ClassMapperBase<ScannedFood> {
  ScannedFoodMapper._();

  static ScannedFoodMapper? _instance;
  static ScannedFoodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScannedFoodMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ScannedFood';

  static String _$uid(ScannedFood v) => v.uid;
  static const Field<ScannedFood, String> _f$uid = Field('uid', _$uid);
  static String _$description(ScannedFood v) => v.description;
  static const Field<ScannedFood, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$originalUid(ScannedFood v) => v.originalUid;
  static const Field<ScannedFood, String> _f$originalUid = Field(
    'originalUid',
    _$originalUid,
    key: r'original_uid',
    opt: true,
  );
  static String? _$brandName(ScannedFood v) => v.brandName;
  static const Field<ScannedFood, String> _f$brandName = Field(
    'brandName',
    _$brandName,
    key: r'brand_name',
    opt: true,
  );

  @override
  final MappableFields<ScannedFood> fields = const {
    #uid: _f$uid,
    #description: _f$description,
    #originalUid: _f$originalUid,
    #brandName: _f$brandName,
  };
  @override
  final bool ignoreNull = true;

  static ScannedFood _instantiate(DecodingData data) {
    return ScannedFood(
      uid: data.dec(_f$uid),
      description: data.dec(_f$description),
      originalUid: data.dec(_f$originalUid),
      brandName: data.dec(_f$brandName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ScannedFood fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScannedFood>(map);
  }

  static ScannedFood fromJson(String json) {
    return ensureInitialized().decodeJson<ScannedFood>(json);
  }
}

mixin ScannedFoodMappable {
  String toJson() {
    return ScannedFoodMapper.ensureInitialized().encodeJson<ScannedFood>(
      this as ScannedFood,
    );
  }

  Map<String, dynamic> toMap() {
    return ScannedFoodMapper.ensureInitialized().encodeMap<ScannedFood>(
      this as ScannedFood,
    );
  }

  ScannedFoodCopyWith<ScannedFood, ScannedFood, ScannedFood> get copyWith =>
      _ScannedFoodCopyWithImpl<ScannedFood, ScannedFood>(
        this as ScannedFood,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ScannedFoodMapper.ensureInitialized().stringifyValue(
      this as ScannedFood,
    );
  }

  @override
  bool operator ==(Object other) {
    return ScannedFoodMapper.ensureInitialized().equalsValue(
      this as ScannedFood,
      other,
    );
  }

  @override
  int get hashCode {
    return ScannedFoodMapper.ensureInitialized().hashValue(this as ScannedFood);
  }
}

extension ScannedFoodValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScannedFood, $Out> {
  ScannedFoodCopyWith<$R, ScannedFood, $Out> get $asScannedFood =>
      $base.as((v, t, t2) => _ScannedFoodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ScannedFoodCopyWith<$R, $In extends ScannedFood, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? uid,
    String? description,
    String? originalUid,
    String? brandName,
  });
  ScannedFoodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ScannedFoodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScannedFood, $Out>
    implements ScannedFoodCopyWith<$R, ScannedFood, $Out> {
  _ScannedFoodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScannedFood> $mapper =
      ScannedFoodMapper.ensureInitialized();
  @override
  $R call({
    String? uid,
    String? description,
    Object? originalUid = $none,
    Object? brandName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uid != null) #uid: uid,
      if (description != null) #description: description,
      if (originalUid != $none) #originalUid: originalUid,
      if (brandName != $none) #brandName: brandName,
    }),
  );
  @override
  ScannedFood $make(CopyWithData data) => ScannedFood(
    uid: data.get(#uid, or: $value.uid),
    description: data.get(#description, or: $value.description),
    originalUid: data.get(#originalUid, or: $value.originalUid),
    brandName: data.get(#brandName, or: $value.brandName),
  );

  @override
  ScannedFoodCopyWith<$R2, ScannedFood, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ScannedFoodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

