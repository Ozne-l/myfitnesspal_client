// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'weight_unit.dart';

class MfpWeightUnitMapper extends EnumMapper<MfpWeightUnit> {
  MfpWeightUnitMapper._();

  static MfpWeightUnitMapper? _instance;
  static MfpWeightUnitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpWeightUnitMapper._());
    }
    return _instance!;
  }

  static MfpWeightUnit fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MfpWeightUnit decode(dynamic value) {
    switch (value) {
      case r'pounds':
        return MfpWeightUnit.pounds;
      case r'kilograms':
        return MfpWeightUnit.kilograms;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MfpWeightUnit self) {
    switch (self) {
      case MfpWeightUnit.pounds:
        return r'pounds';
      case MfpWeightUnit.kilograms:
        return r'kilograms';
    }
  }
}

extension MfpWeightUnitMapperExtension on MfpWeightUnit {
  String toValue() {
    MfpWeightUnitMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MfpWeightUnit>(this) as String;
  }
}

