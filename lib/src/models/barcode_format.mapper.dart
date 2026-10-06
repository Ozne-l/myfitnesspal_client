// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'barcode_format.dart';

class MfpBarcodeFormatMapper extends EnumMapper<MfpBarcodeFormat> {
  MfpBarcodeFormatMapper._();

  static MfpBarcodeFormatMapper? _instance;
  static MfpBarcodeFormatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeFormatMapper._());
    }
    return _instance!;
  }

  static MfpBarcodeFormat fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MfpBarcodeFormat decode(dynamic value) {
    switch (value) {
      case r'ean8':
        return MfpBarcodeFormat.ean8;
      case r'upcA':
        return MfpBarcodeFormat.upcA;
      case r'ean13':
        return MfpBarcodeFormat.ean13;
      case r'gtin14':
        return MfpBarcodeFormat.gtin14;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MfpBarcodeFormat self) {
    switch (self) {
      case MfpBarcodeFormat.ean8:
        return r'ean8';
      case MfpBarcodeFormat.upcA:
        return r'upcA';
      case MfpBarcodeFormat.ean13:
        return r'ean13';
      case MfpBarcodeFormat.gtin14:
        return r'gtin14';
    }
  }
}

extension MfpBarcodeFormatMapperExtension on MfpBarcodeFormat {
  String toValue() {
    MfpBarcodeFormatMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MfpBarcodeFormat>(this) as String;
  }
}

