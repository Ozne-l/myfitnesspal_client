// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_item_type.dart';

class DiaryItemTypeMapper extends EnumMapper<DiaryItemType> {
  DiaryItemTypeMapper._();

  static DiaryItemTypeMapper? _instance;
  static DiaryItemTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiaryItemTypeMapper._());
    }
    return _instance!;
  }

  static DiaryItemType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DiaryItemType decode(dynamic value) {
    switch (value) {
      case r'food_entry':
        return DiaryItemType.foodEntry;
      case r'diary_meal':
        return DiaryItemType.diaryMeal;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DiaryItemType self) {
    switch (self) {
      case DiaryItemType.foodEntry:
        return r'food_entry';
      case DiaryItemType.diaryMeal:
        return r'diary_meal';
    }
  }
}

extension DiaryItemTypeMapperExtension on DiaryItemType {
  String toValue() {
    DiaryItemTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DiaryItemType>(this) as String;
  }
}

