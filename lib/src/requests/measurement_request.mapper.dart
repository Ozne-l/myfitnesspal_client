// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'measurement_request.dart';

class MeasurementRequestMapper extends ClassMapperBase<MeasurementRequest> {
  MeasurementRequestMapper._();

  static MeasurementRequestMapper? _instance;
  static MeasurementRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MeasurementRequestMapper._());
      MfpWeightUnitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MeasurementRequest';

  static String _$type(MeasurementRequest v) => v.type;
  static const Field<MeasurementRequest, String> _f$type = Field(
    'type',
    _$type,
  );
  static double _$value(MeasurementRequest v) => v.value;
  static const Field<MeasurementRequest, double> _f$value = Field(
    'value',
    _$value,
  );
  static MfpWeightUnit _$unit(MeasurementRequest v) => v.unit;
  static const Field<MeasurementRequest, MfpWeightUnit> _f$unit = Field(
    'unit',
    _$unit,
  );
  static String _$date(MeasurementRequest v) => v.date;
  static const Field<MeasurementRequest, String> _f$date = Field(
    'date',
    _$date,
  );

  @override
  final MappableFields<MeasurementRequest> fields = const {
    #type: _f$type,
    #value: _f$value,
    #unit: _f$unit,
    #date: _f$date,
  };
  @override
  final bool ignoreNull = true;

  static MeasurementRequest _instantiate(DecodingData data) {
    return MeasurementRequest(
      type: data.dec(_f$type),
      value: data.dec(_f$value),
      unit: data.dec(_f$unit),
      date: data.dec(_f$date),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MeasurementRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MeasurementRequest>(map);
  }

  static MeasurementRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MeasurementRequest>(json);
  }
}

mixin MeasurementRequestMappable {
  String toJson() {
    return MeasurementRequestMapper.ensureInitialized()
        .encodeJson<MeasurementRequest>(this as MeasurementRequest);
  }

  Map<String, dynamic> toMap() {
    return MeasurementRequestMapper.ensureInitialized()
        .encodeMap<MeasurementRequest>(this as MeasurementRequest);
  }

  MeasurementRequestCopyWith<
    MeasurementRequest,
    MeasurementRequest,
    MeasurementRequest
  >
  get copyWith =>
      _MeasurementRequestCopyWithImpl<MeasurementRequest, MeasurementRequest>(
        this as MeasurementRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MeasurementRequestMapper.ensureInitialized().stringifyValue(
      this as MeasurementRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MeasurementRequestMapper.ensureInitialized().equalsValue(
      this as MeasurementRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MeasurementRequestMapper.ensureInitialized().hashValue(
      this as MeasurementRequest,
    );
  }
}

extension MeasurementRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MeasurementRequest, $Out> {
  MeasurementRequestCopyWith<$R, MeasurementRequest, $Out>
  get $asMeasurementRequest => $base.as(
    (v, t, t2) => _MeasurementRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MeasurementRequestCopyWith<
  $R,
  $In extends MeasurementRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type, double? value, MfpWeightUnit? unit, String? date});
  MeasurementRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MeasurementRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MeasurementRequest, $Out>
    implements MeasurementRequestCopyWith<$R, MeasurementRequest, $Out> {
  _MeasurementRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MeasurementRequest> $mapper =
      MeasurementRequestMapper.ensureInitialized();
  @override
  $R call({String? type, double? value, MfpWeightUnit? unit, String? date}) =>
      $apply(
        FieldCopyWithData({
          if (type != null) #type: type,
          if (value != null) #value: value,
          if (unit != null) #unit: unit,
          if (date != null) #date: date,
        }),
      );
  @override
  MeasurementRequest $make(CopyWithData data) => MeasurementRequest(
    type: data.get(#type, or: $value.type),
    value: data.get(#value, or: $value.value),
    unit: data.get(#unit, or: $value.unit),
    date: data.get(#date, or: $value.date),
  );

  @override
  MeasurementRequestCopyWith<$R2, MeasurementRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MeasurementRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

