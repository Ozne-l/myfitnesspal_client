// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'barcode_failure.dart';

class MfpBarcodeFailureMapper extends EnumMapper<MfpBarcodeFailure> {
  MfpBarcodeFailureMapper._();

  static MfpBarcodeFailureMapper? _instance;
  static MfpBarcodeFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeFailureMapper._());
    }
    return _instance!;
  }

  static MfpBarcodeFailure fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MfpBarcodeFailure decode(dynamic value) {
    switch (value) {
      case r'invalidBarcode':
        return MfpBarcodeFailure.invalidBarcode;
      case r'rejected':
        return MfpBarcodeFailure.rejected;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MfpBarcodeFailure self) {
    switch (self) {
      case MfpBarcodeFailure.invalidBarcode:
        return r'invalidBarcode';
      case MfpBarcodeFailure.rejected:
        return r'rejected';
    }
  }
}

extension MfpBarcodeFailureMapperExtension on MfpBarcodeFailure {
  String toValue() {
    MfpBarcodeFailureMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MfpBarcodeFailure>(this) as String;
  }
}

