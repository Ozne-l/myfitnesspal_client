// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_resource_type.dart';

class SearchResourceTypeMapper extends EnumMapper<SearchResourceType> {
  SearchResourceTypeMapper._();

  static SearchResourceTypeMapper? _instance;
  static SearchResourceTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchResourceTypeMapper._());
    }
    return _instance!;
  }

  static SearchResourceType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SearchResourceType decode(dynamic value) {
    switch (value) {
      case r'foods':
        return SearchResourceType.foods;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SearchResourceType self) {
    switch (self) {
      case SearchResourceType.foods:
        return r'foods';
    }
  }
}

extension SearchResourceTypeMapperExtension on SearchResourceType {
  String toValue() {
    SearchResourceTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SearchResourceType>(this) as String;
  }
}

