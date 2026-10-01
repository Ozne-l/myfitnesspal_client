// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'serving_size.dart';

class MfpServingSizeMapper extends ClassMapperBase<MfpServingSize> {
  MfpServingSizeMapper._();

  static MfpServingSizeMapper? _instance;
  static MfpServingSizeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpServingSizeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MfpServingSize';

  static double _$value(MfpServingSize v) => v.value;
  static const Field<MfpServingSize, double> _f$value = Field('value', _$value);
  static String _$unit(MfpServingSize v) => v.unit;
  static const Field<MfpServingSize, String> _f$unit = Field('unit', _$unit);
  static double? _$nutritionMultiplier(MfpServingSize v) =>
      v.nutritionMultiplier;
  static const Field<MfpServingSize, double> _f$nutritionMultiplier = Field(
    'nutritionMultiplier',
    _$nutritionMultiplier,
    key: r'nutrition_multiplier',
    opt: true,
  );

  @override
  final MappableFields<MfpServingSize> fields = const {
    #value: _f$value,
    #unit: _f$unit,
    #nutritionMultiplier: _f$nutritionMultiplier,
  };
  @override
  final bool ignoreNull = true;

  static MfpServingSize _instantiate(DecodingData data) {
    return MfpServingSize(
      value: data.dec(_f$value),
      unit: data.dec(_f$unit),
      nutritionMultiplier: data.dec(_f$nutritionMultiplier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpServingSize fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpServingSize>(map);
  }

  static MfpServingSize fromJson(String json) {
    return ensureInitialized().decodeJson<MfpServingSize>(json);
  }
}

mixin MfpServingSizeMappable {
  String toJson() {
    return MfpServingSizeMapper.ensureInitialized().encodeJson<MfpServingSize>(
      this as MfpServingSize,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpServingSizeMapper.ensureInitialized().encodeMap<MfpServingSize>(
      this as MfpServingSize,
    );
  }

  MfpServingSizeCopyWith<MfpServingSize, MfpServingSize, MfpServingSize>
  get copyWith => _MfpServingSizeCopyWithImpl<MfpServingSize, MfpServingSize>(
    this as MfpServingSize,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MfpServingSizeMapper.ensureInitialized().stringifyValue(
      this as MfpServingSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpServingSizeMapper.ensureInitialized().equalsValue(
      this as MfpServingSize,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpServingSizeMapper.ensureInitialized().hashValue(
      this as MfpServingSize,
    );
  }
}

extension MfpServingSizeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpServingSize, $Out> {
  MfpServingSizeCopyWith<$R, MfpServingSize, $Out> get $asMfpServingSize =>
      $base.as((v, t, t2) => _MfpServingSizeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpServingSizeCopyWith<$R, $In extends MfpServingSize, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? value, String? unit, double? nutritionMultiplier});
  MfpServingSizeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpServingSizeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpServingSize, $Out>
    implements MfpServingSizeCopyWith<$R, MfpServingSize, $Out> {
  _MfpServingSizeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpServingSize> $mapper =
      MfpServingSizeMapper.ensureInitialized();
  @override
  $R call({double? value, String? unit, Object? nutritionMultiplier = $none}) =>
      $apply(
        FieldCopyWithData({
          if (value != null) #value: value,
          if (unit != null) #unit: unit,
          if (nutritionMultiplier != $none)
            #nutritionMultiplier: nutritionMultiplier,
        }),
      );
  @override
  MfpServingSize $make(CopyWithData data) => MfpServingSize(
    value: data.get(#value, or: $value.value),
    unit: data.get(#unit, or: $value.unit),
    nutritionMultiplier: data.get(
      #nutritionMultiplier,
      or: $value.nutritionMultiplier,
    ),
  );

  @override
  MfpServingSizeCopyWith<$R2, MfpServingSize, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpServingSizeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

