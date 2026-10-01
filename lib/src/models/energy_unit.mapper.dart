// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'energy_unit.dart';

class MfpEnergyUnitMapper extends EnumMapper<MfpEnergyUnit> {
  MfpEnergyUnitMapper._();

  static MfpEnergyUnitMapper? _instance;
  static MfpEnergyUnitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpEnergyUnitMapper._());
    }
    return _instance!;
  }

  static MfpEnergyUnit fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MfpEnergyUnit decode(dynamic value) {
    switch (value) {
      case r'calories':
        return MfpEnergyUnit.calories;
      case r'kilojoules':
        return MfpEnergyUnit.kilojoules;
      case r'unknown':
        return MfpEnergyUnit.unknown;
      default:
        return MfpEnergyUnit.values[2];
    }
  }

  @override
  dynamic encode(MfpEnergyUnit self) {
    switch (self) {
      case MfpEnergyUnit.calories:
        return r'calories';
      case MfpEnergyUnit.kilojoules:
        return r'kilojoules';
      case MfpEnergyUnit.unknown:
        return r'unknown';
    }
  }
}

extension MfpEnergyUnitMapperExtension on MfpEnergyUnit {
  String toValue() {
    MfpEnergyUnitMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MfpEnergyUnit>(this) as String;
  }
}

