// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_field.dart';

class DiaryFieldMapper extends EnumMapper<DiaryField> {
  DiaryFieldMapper._();

  static DiaryFieldMapper? _instance;
  static DiaryFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiaryFieldMapper._());
    }
    return _instance!;
  }

  static DiaryField fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DiaryField decode(dynamic value) {
    switch (value) {
      case r'all':
        return DiaryField.all;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DiaryField self) {
    switch (self) {
      case DiaryField.all:
        return r'all';
    }
  }
}

extension DiaryFieldMapperExtension on DiaryField {
  String toValue() {
    DiaryFieldMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DiaryField>(this) as String;
  }
}

