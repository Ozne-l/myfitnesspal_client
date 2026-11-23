// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'add_measurements_request.dart';

class AddMeasurementsRequestMapper
    extends ClassMapperBase<AddMeasurementsRequest> {
  AddMeasurementsRequestMapper._();

  static AddMeasurementsRequestMapper? _instance;
  static AddMeasurementsRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddMeasurementsRequestMapper._());
      MeasurementRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AddMeasurementsRequest';

  static List<MeasurementRequest> _$items(AddMeasurementsRequest v) => v.items;
  static const Field<AddMeasurementsRequest, List<MeasurementRequest>>
  _f$items = Field('items', _$items);

  @override
  final MappableFields<AddMeasurementsRequest> fields = const {
    #items: _f$items,
  };
  @override
  final bool ignoreNull = true;

  static AddMeasurementsRequest _instantiate(DecodingData data) {
    return AddMeasurementsRequest(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static AddMeasurementsRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddMeasurementsRequest>(map);
  }

  static AddMeasurementsRequest fromJson(String json) {
    return ensureInitialized().decodeJson<AddMeasurementsRequest>(json);
  }
}

mixin AddMeasurementsRequestMappable {
  String toJson() {
    return AddMeasurementsRequestMapper.ensureInitialized()
        .encodeJson<AddMeasurementsRequest>(this as AddMeasurementsRequest);
  }

  Map<String, dynamic> toMap() {
    return AddMeasurementsRequestMapper.ensureInitialized()
        .encodeMap<AddMeasurementsRequest>(this as AddMeasurementsRequest);
  }

  AddMeasurementsRequestCopyWith<
    AddMeasurementsRequest,
    AddMeasurementsRequest,
    AddMeasurementsRequest
  >
  get copyWith =>
      _AddMeasurementsRequestCopyWithImpl<
        AddMeasurementsRequest,
        AddMeasurementsRequest
      >(this as AddMeasurementsRequest, $identity, $identity);
  @override
  String toString() {
    return AddMeasurementsRequestMapper.ensureInitialized().stringifyValue(
      this as AddMeasurementsRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return AddMeasurementsRequestMapper.ensureInitialized().equalsValue(
      this as AddMeasurementsRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return AddMeasurementsRequestMapper.ensureInitialized().hashValue(
      this as AddMeasurementsRequest,
    );
  }
}

extension AddMeasurementsRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddMeasurementsRequest, $Out> {
  AddMeasurementsRequestCopyWith<$R, AddMeasurementsRequest, $Out>
  get $asAddMeasurementsRequest => $base.as(
    (v, t, t2) => _AddMeasurementsRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AddMeasurementsRequestCopyWith<
  $R,
  $In extends AddMeasurementsRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MeasurementRequest,
    MeasurementRequestCopyWith<$R, MeasurementRequest, MeasurementRequest>
  >
  get items;
  $R call({List<MeasurementRequest>? items});
  AddMeasurementsRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AddMeasurementsRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddMeasurementsRequest, $Out>
    implements
        AddMeasurementsRequestCopyWith<$R, AddMeasurementsRequest, $Out> {
  _AddMeasurementsRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddMeasurementsRequest> $mapper =
      AddMeasurementsRequestMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MeasurementRequest,
    MeasurementRequestCopyWith<$R, MeasurementRequest, MeasurementRequest>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<MeasurementRequest>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  AddMeasurementsRequest $make(CopyWithData data) =>
      AddMeasurementsRequest(items: data.get(#items, or: $value.items));

  @override
  AddMeasurementsRequestCopyWith<$R2, AddMeasurementsRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AddMeasurementsRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

