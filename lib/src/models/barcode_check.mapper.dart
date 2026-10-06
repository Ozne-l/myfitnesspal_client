// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'barcode_check.dart';

class MfpBarcodeCheckMapper extends ClassMapperBase<MfpBarcodeCheck> {
  MfpBarcodeCheckMapper._();

  static MfpBarcodeCheckMapper? _instance;
  static MfpBarcodeCheckMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeCheckMapper._());
      MfpValidBarcodeMapper.ensureInitialized();
      MfpBarcodeNotDigitsMapper.ensureInitialized();
      MfpBarcodeWrongLengthMapper.ensureInitialized();
      MfpBarcodeWrongCheckDigitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeCheck';

  static String _$barcode(MfpBarcodeCheck v) => v.barcode;
  static const Field<MfpBarcodeCheck, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );

  @override
  final MappableFields<MfpBarcodeCheck> fields = const {#barcode: _f$barcode};
  @override
  final bool ignoreNull = true;

  static MfpBarcodeCheck _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'MfpBarcodeCheck',
      'kind',
      '${data.value['kind']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeCheck fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeCheck>(map);
  }

  static MfpBarcodeCheck fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeCheck>(json);
  }
}

mixin MfpBarcodeCheckMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MfpBarcodeCheckCopyWith<MfpBarcodeCheck, MfpBarcodeCheck, MfpBarcodeCheck>
  get copyWith;
}

abstract class MfpBarcodeCheckCopyWith<$R, $In extends MfpBarcodeCheck, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? barcode});
  MfpBarcodeCheckCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class MfpValidBarcodeMapper extends SubClassMapperBase<MfpValidBarcode> {
  MfpValidBarcodeMapper._();

  static MfpValidBarcodeMapper? _instance;
  static MfpValidBarcodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpValidBarcodeMapper._());
      MfpBarcodeCheckMapper.ensureInitialized().addSubMapper(_instance!);
      MfpBarcodeFormatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpValidBarcode';

  static String _$barcode(MfpValidBarcode v) => v.barcode;
  static const Field<MfpValidBarcode, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );
  static MfpBarcodeFormat _$format(MfpValidBarcode v) => v.format;
  static const Field<MfpValidBarcode, MfpBarcodeFormat> _f$format = Field(
    'format',
    _$format,
  );

  @override
  final MappableFields<MfpValidBarcode> fields = const {
    #barcode: _f$barcode,
    #format: _f$format,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpValidBarcode';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeCheckMapper.ensureInitialized();

  static MfpValidBarcode _instantiate(DecodingData data) {
    return MfpValidBarcode(data.dec(_f$barcode), data.dec(_f$format));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpValidBarcode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpValidBarcode>(map);
  }

  static MfpValidBarcode fromJson(String json) {
    return ensureInitialized().decodeJson<MfpValidBarcode>(json);
  }
}

mixin MfpValidBarcodeMappable {
  String toJson() {
    return MfpValidBarcodeMapper.ensureInitialized()
        .encodeJson<MfpValidBarcode>(this as MfpValidBarcode);
  }

  Map<String, dynamic> toMap() {
    return MfpValidBarcodeMapper.ensureInitialized().encodeMap<MfpValidBarcode>(
      this as MfpValidBarcode,
    );
  }

  MfpValidBarcodeCopyWith<MfpValidBarcode, MfpValidBarcode, MfpValidBarcode>
  get copyWith =>
      _MfpValidBarcodeCopyWithImpl<MfpValidBarcode, MfpValidBarcode>(
        this as MfpValidBarcode,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpValidBarcodeMapper.ensureInitialized().stringifyValue(
      this as MfpValidBarcode,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpValidBarcodeMapper.ensureInitialized().equalsValue(
      this as MfpValidBarcode,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpValidBarcodeMapper.ensureInitialized().hashValue(
      this as MfpValidBarcode,
    );
  }
}

extension MfpValidBarcodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpValidBarcode, $Out> {
  MfpValidBarcodeCopyWith<$R, MfpValidBarcode, $Out> get $asMfpValidBarcode =>
      $base.as((v, t, t2) => _MfpValidBarcodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpValidBarcodeCopyWith<$R, $In extends MfpValidBarcode, $Out>
    implements MfpBarcodeCheckCopyWith<$R, $In, $Out> {
  @override
  $R call({String? barcode, MfpBarcodeFormat? format});
  MfpValidBarcodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpValidBarcodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpValidBarcode, $Out>
    implements MfpValidBarcodeCopyWith<$R, MfpValidBarcode, $Out> {
  _MfpValidBarcodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpValidBarcode> $mapper =
      MfpValidBarcodeMapper.ensureInitialized();
  @override
  $R call({String? barcode, MfpBarcodeFormat? format}) => $apply(
    FieldCopyWithData({
      if (barcode != null) #barcode: barcode,
      if (format != null) #format: format,
    }),
  );
  @override
  MfpValidBarcode $make(CopyWithData data) => MfpValidBarcode(
    data.get(#barcode, or: $value.barcode),
    data.get(#format, or: $value.format),
  );

  @override
  MfpValidBarcodeCopyWith<$R2, MfpValidBarcode, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpValidBarcodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpBarcodeNotDigitsMapper
    extends SubClassMapperBase<MfpBarcodeNotDigits> {
  MfpBarcodeNotDigitsMapper._();

  static MfpBarcodeNotDigitsMapper? _instance;
  static MfpBarcodeNotDigitsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeNotDigitsMapper._());
      MfpBarcodeCheckMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeNotDigits';

  static String _$barcode(MfpBarcodeNotDigits v) => v.barcode;
  static const Field<MfpBarcodeNotDigits, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );

  @override
  final MappableFields<MfpBarcodeNotDigits> fields = const {
    #barcode: _f$barcode,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeNotDigits';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeCheckMapper.ensureInitialized();

  static MfpBarcodeNotDigits _instantiate(DecodingData data) {
    return MfpBarcodeNotDigits(data.dec(_f$barcode));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeNotDigits fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeNotDigits>(map);
  }

  static MfpBarcodeNotDigits fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeNotDigits>(json);
  }
}

mixin MfpBarcodeNotDigitsMappable {
  String toJson() {
    return MfpBarcodeNotDigitsMapper.ensureInitialized()
        .encodeJson<MfpBarcodeNotDigits>(this as MfpBarcodeNotDigits);
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeNotDigitsMapper.ensureInitialized()
        .encodeMap<MfpBarcodeNotDigits>(this as MfpBarcodeNotDigits);
  }

  MfpBarcodeNotDigitsCopyWith<
    MfpBarcodeNotDigits,
    MfpBarcodeNotDigits,
    MfpBarcodeNotDigits
  >
  get copyWith =>
      _MfpBarcodeNotDigitsCopyWithImpl<
        MfpBarcodeNotDigits,
        MfpBarcodeNotDigits
      >(this as MfpBarcodeNotDigits, $identity, $identity);
  @override
  String toString() {
    return MfpBarcodeNotDigitsMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeNotDigits,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeNotDigitsMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeNotDigits,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeNotDigitsMapper.ensureInitialized().hashValue(
      this as MfpBarcodeNotDigits,
    );
  }
}

extension MfpBarcodeNotDigitsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeNotDigits, $Out> {
  MfpBarcodeNotDigitsCopyWith<$R, MfpBarcodeNotDigits, $Out>
  get $asMfpBarcodeNotDigits => $base.as(
    (v, t, t2) => _MfpBarcodeNotDigitsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpBarcodeNotDigitsCopyWith<
  $R,
  $In extends MfpBarcodeNotDigits,
  $Out
>
    implements MfpBarcodeCheckCopyWith<$R, $In, $Out> {
  @override
  $R call({String? barcode});
  MfpBarcodeNotDigitsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeNotDigitsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeNotDigits, $Out>
    implements MfpBarcodeNotDigitsCopyWith<$R, MfpBarcodeNotDigits, $Out> {
  _MfpBarcodeNotDigitsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeNotDigits> $mapper =
      MfpBarcodeNotDigitsMapper.ensureInitialized();
  @override
  $R call({String? barcode}) =>
      $apply(FieldCopyWithData({if (barcode != null) #barcode: barcode}));
  @override
  MfpBarcodeNotDigits $make(CopyWithData data) =>
      MfpBarcodeNotDigits(data.get(#barcode, or: $value.barcode));

  @override
  MfpBarcodeNotDigitsCopyWith<$R2, MfpBarcodeNotDigits, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MfpBarcodeNotDigitsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpBarcodeWrongLengthMapper
    extends SubClassMapperBase<MfpBarcodeWrongLength> {
  MfpBarcodeWrongLengthMapper._();

  static MfpBarcodeWrongLengthMapper? _instance;
  static MfpBarcodeWrongLengthMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeWrongLengthMapper._());
      MfpBarcodeCheckMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeWrongLength';

  static String _$barcode(MfpBarcodeWrongLength v) => v.barcode;
  static const Field<MfpBarcodeWrongLength, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );

  @override
  final MappableFields<MfpBarcodeWrongLength> fields = const {
    #barcode: _f$barcode,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeWrongLength';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeCheckMapper.ensureInitialized();

  static MfpBarcodeWrongLength _instantiate(DecodingData data) {
    return MfpBarcodeWrongLength(data.dec(_f$barcode));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeWrongLength fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeWrongLength>(map);
  }

  static MfpBarcodeWrongLength fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeWrongLength>(json);
  }
}

mixin MfpBarcodeWrongLengthMappable {
  String toJson() {
    return MfpBarcodeWrongLengthMapper.ensureInitialized()
        .encodeJson<MfpBarcodeWrongLength>(this as MfpBarcodeWrongLength);
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeWrongLengthMapper.ensureInitialized()
        .encodeMap<MfpBarcodeWrongLength>(this as MfpBarcodeWrongLength);
  }

  MfpBarcodeWrongLengthCopyWith<
    MfpBarcodeWrongLength,
    MfpBarcodeWrongLength,
    MfpBarcodeWrongLength
  >
  get copyWith =>
      _MfpBarcodeWrongLengthCopyWithImpl<
        MfpBarcodeWrongLength,
        MfpBarcodeWrongLength
      >(this as MfpBarcodeWrongLength, $identity, $identity);
  @override
  String toString() {
    return MfpBarcodeWrongLengthMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeWrongLength,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeWrongLengthMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeWrongLength,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeWrongLengthMapper.ensureInitialized().hashValue(
      this as MfpBarcodeWrongLength,
    );
  }
}

extension MfpBarcodeWrongLengthValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeWrongLength, $Out> {
  MfpBarcodeWrongLengthCopyWith<$R, MfpBarcodeWrongLength, $Out>
  get $asMfpBarcodeWrongLength => $base.as(
    (v, t, t2) => _MfpBarcodeWrongLengthCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpBarcodeWrongLengthCopyWith<
  $R,
  $In extends MfpBarcodeWrongLength,
  $Out
>
    implements MfpBarcodeCheckCopyWith<$R, $In, $Out> {
  @override
  $R call({String? barcode});
  MfpBarcodeWrongLengthCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeWrongLengthCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeWrongLength, $Out>
    implements MfpBarcodeWrongLengthCopyWith<$R, MfpBarcodeWrongLength, $Out> {
  _MfpBarcodeWrongLengthCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeWrongLength> $mapper =
      MfpBarcodeWrongLengthMapper.ensureInitialized();
  @override
  $R call({String? barcode}) =>
      $apply(FieldCopyWithData({if (barcode != null) #barcode: barcode}));
  @override
  MfpBarcodeWrongLength $make(CopyWithData data) =>
      MfpBarcodeWrongLength(data.get(#barcode, or: $value.barcode));

  @override
  MfpBarcodeWrongLengthCopyWith<$R2, MfpBarcodeWrongLength, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MfpBarcodeWrongLengthCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpBarcodeWrongCheckDigitMapper
    extends SubClassMapperBase<MfpBarcodeWrongCheckDigit> {
  MfpBarcodeWrongCheckDigitMapper._();

  static MfpBarcodeWrongCheckDigitMapper? _instance;
  static MfpBarcodeWrongCheckDigitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = MfpBarcodeWrongCheckDigitMapper._(),
      );
      MfpBarcodeCheckMapper.ensureInitialized().addSubMapper(_instance!);
      MfpBarcodeFormatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeWrongCheckDigit';

  static String _$barcode(MfpBarcodeWrongCheckDigit v) => v.barcode;
  static const Field<MfpBarcodeWrongCheckDigit, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );
  static MfpBarcodeFormat _$format(MfpBarcodeWrongCheckDigit v) => v.format;
  static const Field<MfpBarcodeWrongCheckDigit, MfpBarcodeFormat> _f$format =
      Field('format', _$format);
  static int _$actual(MfpBarcodeWrongCheckDigit v) => v.actual;
  static const Field<MfpBarcodeWrongCheckDigit, int> _f$actual = Field(
    'actual',
    _$actual,
  );
  static int _$expected(MfpBarcodeWrongCheckDigit v) => v.expected;
  static const Field<MfpBarcodeWrongCheckDigit, int> _f$expected = Field(
    'expected',
    _$expected,
  );

  @override
  final MappableFields<MfpBarcodeWrongCheckDigit> fields = const {
    #barcode: _f$barcode,
    #format: _f$format,
    #actual: _f$actual,
    #expected: _f$expected,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeWrongCheckDigit';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeCheckMapper.ensureInitialized();

  static MfpBarcodeWrongCheckDigit _instantiate(DecodingData data) {
    return MfpBarcodeWrongCheckDigit(
      data.dec(_f$barcode),
      data.dec(_f$format),
      actual: data.dec(_f$actual),
      expected: data.dec(_f$expected),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeWrongCheckDigit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeWrongCheckDigit>(map);
  }

  static MfpBarcodeWrongCheckDigit fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeWrongCheckDigit>(json);
  }
}

mixin MfpBarcodeWrongCheckDigitMappable {
  String toJson() {
    return MfpBarcodeWrongCheckDigitMapper.ensureInitialized()
        .encodeJson<MfpBarcodeWrongCheckDigit>(
          this as MfpBarcodeWrongCheckDigit,
        );
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeWrongCheckDigitMapper.ensureInitialized()
        .encodeMap<MfpBarcodeWrongCheckDigit>(
          this as MfpBarcodeWrongCheckDigit,
        );
  }

  MfpBarcodeWrongCheckDigitCopyWith<
    MfpBarcodeWrongCheckDigit,
    MfpBarcodeWrongCheckDigit,
    MfpBarcodeWrongCheckDigit
  >
  get copyWith =>
      _MfpBarcodeWrongCheckDigitCopyWithImpl<
        MfpBarcodeWrongCheckDigit,
        MfpBarcodeWrongCheckDigit
      >(this as MfpBarcodeWrongCheckDigit, $identity, $identity);
  @override
  String toString() {
    return MfpBarcodeWrongCheckDigitMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeWrongCheckDigit,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeWrongCheckDigitMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeWrongCheckDigit,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeWrongCheckDigitMapper.ensureInitialized().hashValue(
      this as MfpBarcodeWrongCheckDigit,
    );
  }
}

extension MfpBarcodeWrongCheckDigitValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeWrongCheckDigit, $Out> {
  MfpBarcodeWrongCheckDigitCopyWith<$R, MfpBarcodeWrongCheckDigit, $Out>
  get $asMfpBarcodeWrongCheckDigit => $base.as(
    (v, t, t2) => _MfpBarcodeWrongCheckDigitCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpBarcodeWrongCheckDigitCopyWith<
  $R,
  $In extends MfpBarcodeWrongCheckDigit,
  $Out
>
    implements MfpBarcodeCheckCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? barcode,
    MfpBarcodeFormat? format,
    int? actual,
    int? expected,
  });
  MfpBarcodeWrongCheckDigitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeWrongCheckDigitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeWrongCheckDigit, $Out>
    implements
        MfpBarcodeWrongCheckDigitCopyWith<$R, MfpBarcodeWrongCheckDigit, $Out> {
  _MfpBarcodeWrongCheckDigitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeWrongCheckDigit> $mapper =
      MfpBarcodeWrongCheckDigitMapper.ensureInitialized();
  @override
  $R call({
    String? barcode,
    MfpBarcodeFormat? format,
    int? actual,
    int? expected,
  }) => $apply(
    FieldCopyWithData({
      if (barcode != null) #barcode: barcode,
      if (format != null) #format: format,
      if (actual != null) #actual: actual,
      if (expected != null) #expected: expected,
    }),
  );
  @override
  MfpBarcodeWrongCheckDigit $make(CopyWithData data) =>
      MfpBarcodeWrongCheckDigit(
        data.get(#barcode, or: $value.barcode),
        data.get(#format, or: $value.format),
        actual: data.get(#actual, or: $value.actual),
        expected: data.get(#expected, or: $value.expected),
      );

  @override
  MfpBarcodeWrongCheckDigitCopyWith<$R2, MfpBarcodeWrongCheckDigit, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MfpBarcodeWrongCheckDigitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

