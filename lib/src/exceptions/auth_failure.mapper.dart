// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_failure.dart';

class MfpAuthFailureMapper extends EnumMapper<MfpAuthFailure> {
  MfpAuthFailureMapper._();

  static MfpAuthFailureMapper? _instance;
  static MfpAuthFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpAuthFailureMapper._());
    }
    return _instance!;
  }

  static MfpAuthFailure fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MfpAuthFailure decode(dynamic value) {
    switch (value) {
      case r'notSignedIn':
        return MfpAuthFailure.notSignedIn;
      case r'noSessionCookie':
        return MfpAuthFailure.noSessionCookie;
      case r'sessionExpired':
        return MfpAuthFailure.sessionExpired;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MfpAuthFailure self) {
    switch (self) {
      case MfpAuthFailure.notSignedIn:
        return r'notSignedIn';
      case MfpAuthFailure.noSessionCookie:
        return r'noSessionCookie';
      case MfpAuthFailure.sessionExpired:
        return r'sessionExpired';
    }
  }
}

extension MfpAuthFailureMapperExtension on MfpAuthFailure {
  String toValue() {
    MfpAuthFailureMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MfpAuthFailure>(this) as String;
  }
}

