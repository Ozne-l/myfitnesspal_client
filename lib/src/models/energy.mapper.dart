// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'energy.dart';

class MfpEnergyMapper extends ClassMapperBase<MfpEnergy> {
  MfpEnergyMapper._();

  static MfpEnergyMapper? _instance;
  static MfpEnergyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpEnergyMapper._());
      MfpEnergyUnitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpEnergy';

  static MfpEnergyUnit _$unit(MfpEnergy v) => v.unit;
  static const Field<MfpEnergy, MfpEnergyUnit> _f$unit = Field('unit', _$unit);
  static double _$value(MfpEnergy v) => v.value;
  static const Field<MfpEnergy, double> _f$value = Field('value', _$value);

  @override
  final MappableFields<MfpEnergy> fields = const {
    #unit: _f$unit,
    #value: _f$value,
  };
  @override
  final bool ignoreNull = true;

  static MfpEnergy _instantiate(DecodingData data) {
    return MfpEnergy(unit: data.dec(_f$unit), value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpEnergy fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpEnergy>(map);
  }

  static MfpEnergy fromJson(String json) {
    return ensureInitialized().decodeJson<MfpEnergy>(json);
  }
}

mixin MfpEnergyMappable {
  String toJson() {
    return MfpEnergyMapper.ensureInitialized().encodeJson<MfpEnergy>(
      this as MfpEnergy,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpEnergyMapper.ensureInitialized().encodeMap<MfpEnergy>(
      this as MfpEnergy,
    );
  }

  MfpEnergyCopyWith<MfpEnergy, MfpEnergy, MfpEnergy> get copyWith =>
      _MfpEnergyCopyWithImpl<MfpEnergy, MfpEnergy>(
        this as MfpEnergy,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpEnergyMapper.ensureInitialized().stringifyValue(
      this as MfpEnergy,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpEnergyMapper.ensureInitialized().equalsValue(
      this as MfpEnergy,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpEnergyMapper.ensureInitialized().hashValue(this as MfpEnergy);
  }
}

extension MfpEnergyValueCopy<$R, $Out> on ObjectCopyWith<$R, MfpEnergy, $Out> {
  MfpEnergyCopyWith<$R, MfpEnergy, $Out> get $asMfpEnergy =>
      $base.as((v, t, t2) => _MfpEnergyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpEnergyCopyWith<$R, $In extends MfpEnergy, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({MfpEnergyUnit? unit, double? value});
  MfpEnergyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpEnergyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpEnergy, $Out>
    implements MfpEnergyCopyWith<$R, MfpEnergy, $Out> {
  _MfpEnergyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpEnergy> $mapper =
      MfpEnergyMapper.ensureInitialized();
  @override
  $R call({MfpEnergyUnit? unit, double? value}) => $apply(
    FieldCopyWithData({
      if (unit != null) #unit: unit,
      if (value != null) #value: value,
    }),
  );
  @override
  MfpEnergy $make(CopyWithData data) => MfpEnergy(
    unit: data.get(#unit, or: $value.unit),
    value: data.get(#value, or: $value.value),
  );

  @override
  MfpEnergyCopyWith<$R2, MfpEnergy, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpEnergyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

