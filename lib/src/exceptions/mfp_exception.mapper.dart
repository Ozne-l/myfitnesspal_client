// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mfp_exception.dart';

class MfpExceptionMapper extends ClassMapperBase<MfpException> {
  MfpExceptionMapper._();

  static MfpExceptionMapper? _instance;
  static MfpExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpExceptionMapper._());
      MfpAuthExceptionMapper.ensureInitialized();
      MfpApiExceptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpException';

  static List<String> _$errors(MfpException v) => v.errors;
  static const Field<MfpException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
  );

  @override
  final MappableFields<MfpException> fields = const {#errors: _f$errors};
  @override
  final bool ignoreNull = true;

  static MfpException _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'MfpException',
      'kind',
      '${data.value['kind']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpException>(map);
  }

  static MfpException fromJson(String json) {
    return ensureInitialized().decodeJson<MfpException>(json);
  }
}

mixin MfpExceptionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MfpExceptionCopyWith<MfpException, MfpException, MfpException> get copyWith;
}

abstract class MfpExceptionCopyWith<$R, $In extends MfpException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  $R call({List<String>? errors});
  MfpExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class MfpAuthExceptionMapper extends SubClassMapperBase<MfpAuthException> {
  MfpAuthExceptionMapper._();

  static MfpAuthExceptionMapper? _instance;
  static MfpAuthExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpAuthExceptionMapper._());
      MfpExceptionMapper.ensureInitialized().addSubMapper(_instance!);
      MfpAuthFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpAuthException';

  static MfpAuthFailure _$failure(MfpAuthException v) => v.failure;
  static const Field<MfpAuthException, MfpAuthFailure> _f$failure = Field(
    'failure',
    _$failure,
  );
  static List<String> _$errors(MfpAuthException v) => v.errors;
  static const Field<MfpAuthException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MfpAuthException> fields = const {
    #failure: _f$failure,
    #errors: _f$errors,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpAuthException';
  @override
  late final ClassMapperBase superMapper =
      MfpExceptionMapper.ensureInitialized();

  static MfpAuthException _instantiate(DecodingData data) {
    return MfpAuthException(data.dec(_f$failure), data.dec(_f$errors));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpAuthException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpAuthException>(map);
  }

  static MfpAuthException fromJson(String json) {
    return ensureInitialized().decodeJson<MfpAuthException>(json);
  }
}

mixin MfpAuthExceptionMappable {
  String toJson() {
    return MfpAuthExceptionMapper.ensureInitialized()
        .encodeJson<MfpAuthException>(this as MfpAuthException);
  }

  Map<String, dynamic> toMap() {
    return MfpAuthExceptionMapper.ensureInitialized()
        .encodeMap<MfpAuthException>(this as MfpAuthException);
  }

  MfpAuthExceptionCopyWith<MfpAuthException, MfpAuthException, MfpAuthException>
  get copyWith =>
      _MfpAuthExceptionCopyWithImpl<MfpAuthException, MfpAuthException>(
        this as MfpAuthException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpAuthExceptionMapper.ensureInitialized().stringifyValue(
      this as MfpAuthException,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpAuthExceptionMapper.ensureInitialized().equalsValue(
      this as MfpAuthException,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpAuthExceptionMapper.ensureInitialized().hashValue(
      this as MfpAuthException,
    );
  }
}

extension MfpAuthExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpAuthException, $Out> {
  MfpAuthExceptionCopyWith<$R, MfpAuthException, $Out>
  get $asMfpAuthException =>
      $base.as((v, t, t2) => _MfpAuthExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpAuthExceptionCopyWith<$R, $In extends MfpAuthException, $Out>
    implements MfpExceptionCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  @override
  $R call({MfpAuthFailure? failure, List<String>? errors});
  MfpAuthExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpAuthExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpAuthException, $Out>
    implements MfpAuthExceptionCopyWith<$R, MfpAuthException, $Out> {
  _MfpAuthExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpAuthException> $mapper =
      MfpAuthExceptionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors =>
      ListCopyWith(
        $value.errors,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(errors: v),
      );
  @override
  $R call({MfpAuthFailure? failure, List<String>? errors}) => $apply(
    FieldCopyWithData({
      if (failure != null) #failure: failure,
      if (errors != null) #errors: errors,
    }),
  );
  @override
  MfpAuthException $make(CopyWithData data) => MfpAuthException(
    data.get(#failure, or: $value.failure),
    data.get(#errors, or: $value.errors),
  );

  @override
  MfpAuthExceptionCopyWith<$R2, MfpAuthException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpAuthExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpApiExceptionMapper extends SubClassMapperBase<MfpApiException> {
  MfpApiExceptionMapper._();

  static MfpApiExceptionMapper? _instance;
  static MfpApiExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpApiExceptionMapper._());
      MfpExceptionMapper.ensureInitialized().addSubMapper(_instance!);
      MapperContainer.globals.useAll([UriMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpApiException';

  static String _$method(MfpApiException v) => v.method;
  static const Field<MfpApiException, String> _f$method = Field(
    'method',
    _$method,
  );
  static Uri _$uri(MfpApiException v) => v.uri;
  static const Field<MfpApiException, Uri> _f$uri = Field('uri', _$uri);
  static int _$statusCode(MfpApiException v) => v.statusCode;
  static const Field<MfpApiException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    key: r'status_code',
  );
  static List<String> _$errors(MfpApiException v) => v.errors;
  static const Field<MfpApiException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MfpApiException> fields = const {
    #method: _f$method,
    #uri: _f$uri,
    #statusCode: _f$statusCode,
    #errors: _f$errors,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpApiException';
  @override
  late final ClassMapperBase superMapper =
      MfpExceptionMapper.ensureInitialized();

  static MfpApiException _instantiate(DecodingData data) {
    return MfpApiException(
      method: data.dec(_f$method),
      uri: data.dec(_f$uri),
      statusCode: data.dec(_f$statusCode),
      errors: data.dec(_f$errors),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpApiException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpApiException>(map);
  }

  static MfpApiException fromJson(String json) {
    return ensureInitialized().decodeJson<MfpApiException>(json);
  }
}

mixin MfpApiExceptionMappable {
  String toJson() {
    return MfpApiExceptionMapper.ensureInitialized()
        .encodeJson<MfpApiException>(this as MfpApiException);
  }

  Map<String, dynamic> toMap() {
    return MfpApiExceptionMapper.ensureInitialized().encodeMap<MfpApiException>(
      this as MfpApiException,
    );
  }

  MfpApiExceptionCopyWith<MfpApiException, MfpApiException, MfpApiException>
  get copyWith =>
      _MfpApiExceptionCopyWithImpl<MfpApiException, MfpApiException>(
        this as MfpApiException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpApiExceptionMapper.ensureInitialized().stringifyValue(
      this as MfpApiException,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpApiExceptionMapper.ensureInitialized().equalsValue(
      this as MfpApiException,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpApiExceptionMapper.ensureInitialized().hashValue(
      this as MfpApiException,
    );
  }
}

extension MfpApiExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpApiException, $Out> {
  MfpApiExceptionCopyWith<$R, MfpApiException, $Out> get $asMfpApiException =>
      $base.as((v, t, t2) => _MfpApiExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpApiExceptionCopyWith<$R, $In extends MfpApiException, $Out>
    implements MfpExceptionCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  @override
  $R call({String? method, Uri? uri, int? statusCode, List<String>? errors});
  MfpApiExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpApiExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpApiException, $Out>
    implements MfpApiExceptionCopyWith<$R, MfpApiException, $Out> {
  _MfpApiExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpApiException> $mapper =
      MfpApiExceptionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors =>
      ListCopyWith(
        $value.errors,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(errors: v),
      );
  @override
  $R call({String? method, Uri? uri, int? statusCode, List<String>? errors}) =>
      $apply(
        FieldCopyWithData({
          if (method != null) #method: method,
          if (uri != null) #uri: uri,
          if (statusCode != null) #statusCode: statusCode,
          if (errors != null) #errors: errors,
        }),
      );
  @override
  MfpApiException $make(CopyWithData data) => MfpApiException(
    method: data.get(#method, or: $value.method),
    uri: data.get(#uri, or: $value.uri),
    statusCode: data.get(#statusCode, or: $value.statusCode),
    errors: data.get(#errors, or: $value.errors),
  );

  @override
  MfpApiExceptionCopyWith<$R2, MfpApiException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpApiExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

