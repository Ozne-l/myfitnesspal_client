// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_scope.dart';

class SearchScopeMapper extends EnumMapper<SearchScope> {
  SearchScopeMapper._();

  static SearchScopeMapper? _instance;
  static SearchScopeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchScopeMapper._());
    }
    return _instance!;
  }

  static SearchScope fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SearchScope decode(dynamic value) {
    switch (value) {
      case r'all':
        return SearchScope.all;
      case r'verified':
        return SearchScope.verified;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SearchScope self) {
    switch (self) {
      case SearchScope.all:
        return r'all';
      case SearchScope.verified:
        return r'verified';
    }
  }
}

extension SearchScopeMapperExtension on SearchScope {
  String toValue() {
    SearchScopeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SearchScope>(this) as String;
  }
}

