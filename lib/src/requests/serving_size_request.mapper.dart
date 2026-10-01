// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'serving_size_request.dart';

class ServingSizeRequestMapper extends ClassMapperBase<ServingSizeRequest> {
  ServingSizeRequestMapper._();

  static ServingSizeRequestMapper? _instance;
  static ServingSizeRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServingSizeRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ServingSizeRequest';

  static double _$value(ServingSizeRequest v) => v.value;
  static const Field<ServingSizeRequest, double> _f$value = Field(
    'value',
    _$value,
  );
  static String _$unit(ServingSizeRequest v) => v.unit;
  static const Field<ServingSizeRequest, String> _f$unit = Field(
    'unit',
    _$unit,
  );
  static double? _$nutritionMultiplier(ServingSizeRequest v) =>
      v.nutritionMultiplier;
  static const Field<ServingSizeRequest, double> _f$nutritionMultiplier = Field(
    'nutritionMultiplier',
    _$nutritionMultiplier,
    key: r'nutrition_multiplier',
    opt: true,
  );

  @override
  final MappableFields<ServingSizeRequest> fields = const {
    #value: _f$value,
    #unit: _f$unit,
    #nutritionMultiplier: _f$nutritionMultiplier,
  };
  @override
  final bool ignoreNull = true;

  static ServingSizeRequest _instantiate(DecodingData data) {
    return ServingSizeRequest(
      value: data.dec(_f$value),
      unit: data.dec(_f$unit),
      nutritionMultiplier: data.dec(_f$nutritionMultiplier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ServingSizeRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServingSizeRequest>(map);
  }

  static ServingSizeRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ServingSizeRequest>(json);
  }
}

mixin ServingSizeRequestMappable {
  String toJson() {
    return ServingSizeRequestMapper.ensureInitialized()
        .encodeJson<ServingSizeRequest>(this as ServingSizeRequest);
  }

  Map<String, dynamic> toMap() {
    return ServingSizeRequestMapper.ensureInitialized()
        .encodeMap<ServingSizeRequest>(this as ServingSizeRequest);
  }

  ServingSizeRequestCopyWith<
    ServingSizeRequest,
    ServingSizeRequest,
    ServingSizeRequest
  >
  get copyWith =>
      _ServingSizeRequestCopyWithImpl<ServingSizeRequest, ServingSizeRequest>(
        this as ServingSizeRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ServingSizeRequestMapper.ensureInitialized().stringifyValue(
      this as ServingSizeRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ServingSizeRequestMapper.ensureInitialized().equalsValue(
      this as ServingSizeRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ServingSizeRequestMapper.ensureInitialized().hashValue(
      this as ServingSizeRequest,
    );
  }
}

extension ServingSizeRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServingSizeRequest, $Out> {
  ServingSizeRequestCopyWith<$R, ServingSizeRequest, $Out>
  get $asServingSizeRequest => $base.as(
    (v, t, t2) => _ServingSizeRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ServingSizeRequestCopyWith<
  $R,
  $In extends ServingSizeRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? value, String? unit, double? nutritionMultiplier});
  ServingSizeRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ServingSizeRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServingSizeRequest, $Out>
    implements ServingSizeRequestCopyWith<$R, ServingSizeRequest, $Out> {
  _ServingSizeRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServingSizeRequest> $mapper =
      ServingSizeRequestMapper.ensureInitialized();
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
  ServingSizeRequest $make(CopyWithData data) => ServingSizeRequest(
    value: data.get(#value, or: $value.value),
    unit: data.get(#unit, or: $value.unit),
    nutritionMultiplier: data.get(
      #nutritionMultiplier,
      or: $value.nutritionMultiplier,
    ),
  );

  @override
  ServingSizeRequestCopyWith<$R2, ServingSizeRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ServingSizeRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

