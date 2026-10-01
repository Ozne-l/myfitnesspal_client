// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_field.dart';

class FoodFieldMapper extends EnumMapper<FoodField> {
  FoodFieldMapper._();

  static FoodFieldMapper? _instance;
  static FoodFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodFieldMapper._());
    }
    return _instance!;
  }

  static FoodField fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  FoodField decode(dynamic value) {
    switch (value) {
      case r'id':
        return FoodField.id;
      case r'version':
        return FoodField.version;
      case r'description':
        return FoodField.description;
      case r'brand_name':
        return FoodField.brandName;
      case r'serving_sizes':
        return FoodField.servingSizes;
      case r'nutritional_contents':
        return FoodField.nutritionalContents;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(FoodField self) {
    switch (self) {
      case FoodField.id:
        return r'id';
      case FoodField.version:
        return r'version';
      case FoodField.description:
        return r'description';
      case FoodField.brandName:
        return r'brand_name';
      case FoodField.servingSizes:
        return r'serving_sizes';
      case FoodField.nutritionalContents:
        return r'nutritional_contents';
    }
  }
}

extension FoodFieldMapperExtension on FoodField {
  String toValue() {
    FoodFieldMapper.ensureInitialized();
    return MapperContainer.globals.toValue<FoodField>(this) as String;
  }
}

