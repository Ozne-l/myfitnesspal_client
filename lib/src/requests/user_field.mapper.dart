// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_field.dart';

class UserFieldMapper extends EnumMapper<UserField> {
  UserFieldMapper._();

  static UserFieldMapper? _instance;
  static UserFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserFieldMapper._());
    }
    return _instance!;
  }

  static UserField fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  UserField decode(dynamic value) {
    switch (value) {
      case r'diary_preferences':
        return UserField.diaryPreferences;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(UserField self) {
    switch (self) {
      case UserField.diaryPreferences:
        return r'diary_preferences';
    }
  }
}

extension UserFieldMapperExtension on UserField {
  String toValue() {
    UserFieldMapper.ensureInitialized();
    return MapperContainer.globals.toValue<UserField>(this) as String;
  }
}

