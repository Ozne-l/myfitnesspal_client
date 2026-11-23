// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'measurement.dart';

class MfpMeasurementMapper extends ClassMapperBase<MfpMeasurement> {
  MfpMeasurementMapper._();

  static MfpMeasurementMapper? _instance;
  static MfpMeasurementMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpMeasurementMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MfpMeasurement';

  static String _$id(MfpMeasurement v) => v.id;
  static const Field<MfpMeasurement, String> _f$id = Field('id', _$id);
  static String _$type(MfpMeasurement v) => v.type;
  static const Field<MfpMeasurement, String> _f$type = Field('type', _$type);
  static double _$value(MfpMeasurement v) => v.value;
  static const Field<MfpMeasurement, double> _f$value = Field('value', _$value);
  static String _$unit(MfpMeasurement v) => v.unit;
  static const Field<MfpMeasurement, String> _f$unit = Field('unit', _$unit);
  static DateTime _$date(MfpMeasurement v) => v.date;
  static const Field<MfpMeasurement, DateTime> _f$date = Field(
    'date',
    _$date,
    hook: CalendarDateHook(),
  );
  static DateTime? _$updatedAt(MfpMeasurement v) => v.updatedAt;
  static const Field<MfpMeasurement, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );

  @override
  final MappableFields<MfpMeasurement> fields = const {
    #id: _f$id,
    #type: _f$type,
    #value: _f$value,
    #unit: _f$unit,
    #date: _f$date,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static MfpMeasurement _instantiate(DecodingData data) {
    return MfpMeasurement(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      value: data.dec(_f$value),
      unit: data.dec(_f$unit),
      date: data.dec(_f$date),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpMeasurement fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpMeasurement>(map);
  }

  static MfpMeasurement fromJson(String json) {
    return ensureInitialized().decodeJson<MfpMeasurement>(json);
  }
}

mixin MfpMeasurementMappable {
  String toJson() {
    return MfpMeasurementMapper.ensureInitialized().encodeJson<MfpMeasurement>(
      this as MfpMeasurement,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpMeasurementMapper.ensureInitialized().encodeMap<MfpMeasurement>(
      this as MfpMeasurement,
    );
  }

  MfpMeasurementCopyWith<MfpMeasurement, MfpMeasurement, MfpMeasurement>
  get copyWith => _MfpMeasurementCopyWithImpl<MfpMeasurement, MfpMeasurement>(
    this as MfpMeasurement,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MfpMeasurementMapper.ensureInitialized().stringifyValue(
      this as MfpMeasurement,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpMeasurementMapper.ensureInitialized().equalsValue(
      this as MfpMeasurement,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpMeasurementMapper.ensureInitialized().hashValue(
      this as MfpMeasurement,
    );
  }
}

extension MfpMeasurementValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpMeasurement, $Out> {
  MfpMeasurementCopyWith<$R, MfpMeasurement, $Out> get $asMfpMeasurement =>
      $base.as((v, t, t2) => _MfpMeasurementCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpMeasurementCopyWith<$R, $In extends MfpMeasurement, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? type,
    double? value,
    String? unit,
    DateTime? date,
    DateTime? updatedAt,
  });
  MfpMeasurementCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpMeasurementCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpMeasurement, $Out>
    implements MfpMeasurementCopyWith<$R, MfpMeasurement, $Out> {
  _MfpMeasurementCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpMeasurement> $mapper =
      MfpMeasurementMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? type,
    double? value,
    String? unit,
    DateTime? date,
    Object? updatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (value != null) #value: value,
      if (unit != null) #unit: unit,
      if (date != null) #date: date,
      if (updatedAt != $none) #updatedAt: updatedAt,
    }),
  );
  @override
  MfpMeasurement $make(CopyWithData data) => MfpMeasurement(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    value: data.get(#value, or: $value.value),
    unit: data.get(#unit, or: $value.unit),
    date: data.get(#date, or: $value.date),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  MfpMeasurementCopyWith<$R2, MfpMeasurement, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpMeasurementCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

