// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'measurements_response.dart';

class MeasurementsResponseMapper extends ClassMapperBase<MeasurementsResponse> {
  MeasurementsResponseMapper._();

  static MeasurementsResponseMapper? _instance;
  static MeasurementsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MeasurementsResponseMapper._());
      MfpMeasurementMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MeasurementsResponse';

  static List<MfpMeasurement> _$items(MeasurementsResponse v) => v.items;
  static const Field<MeasurementsResponse, List<MfpMeasurement>> _f$items =
      Field(
        'items',
        _$items,
        opt: true,
        def: const [],
        hook: NullToEmptyListHook(),
      );

  @override
  final MappableFields<MeasurementsResponse> fields = const {#items: _f$items};
  @override
  final bool ignoreNull = true;

  static MeasurementsResponse _instantiate(DecodingData data) {
    return MeasurementsResponse(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static MeasurementsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MeasurementsResponse>(map);
  }

  static MeasurementsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<MeasurementsResponse>(json);
  }
}

mixin MeasurementsResponseMappable {
  String toJson() {
    return MeasurementsResponseMapper.ensureInitialized()
        .encodeJson<MeasurementsResponse>(this as MeasurementsResponse);
  }

  Map<String, dynamic> toMap() {
    return MeasurementsResponseMapper.ensureInitialized()
        .encodeMap<MeasurementsResponse>(this as MeasurementsResponse);
  }

  MeasurementsResponseCopyWith<
    MeasurementsResponse,
    MeasurementsResponse,
    MeasurementsResponse
  >
  get copyWith =>
      _MeasurementsResponseCopyWithImpl<
        MeasurementsResponse,
        MeasurementsResponse
      >(this as MeasurementsResponse, $identity, $identity);
  @override
  String toString() {
    return MeasurementsResponseMapper.ensureInitialized().stringifyValue(
      this as MeasurementsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return MeasurementsResponseMapper.ensureInitialized().equalsValue(
      this as MeasurementsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return MeasurementsResponseMapper.ensureInitialized().hashValue(
      this as MeasurementsResponse,
    );
  }
}

extension MeasurementsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MeasurementsResponse, $Out> {
  MeasurementsResponseCopyWith<$R, MeasurementsResponse, $Out>
  get $asMeasurementsResponse => $base.as(
    (v, t, t2) => _MeasurementsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MeasurementsResponseCopyWith<
  $R,
  $In extends MeasurementsResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MfpMeasurement,
    MfpMeasurementCopyWith<$R, MfpMeasurement, MfpMeasurement>
  >
  get items;
  $R call({List<MfpMeasurement>? items});
  MeasurementsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MeasurementsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MeasurementsResponse, $Out>
    implements MeasurementsResponseCopyWith<$R, MeasurementsResponse, $Out> {
  _MeasurementsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MeasurementsResponse> $mapper =
      MeasurementsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MfpMeasurement,
    MfpMeasurementCopyWith<$R, MfpMeasurement, MfpMeasurement>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<MfpMeasurement>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  MeasurementsResponse $make(CopyWithData data) =>
      MeasurementsResponse(items: data.get(#items, or: $value.items));

  @override
  MeasurementsResponseCopyWith<$R2, MeasurementsResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MeasurementsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

