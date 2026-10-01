// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'error_response.dart';

class ErrorResponseMapper extends ClassMapperBase<ErrorResponse> {
  ErrorResponseMapper._();

  static ErrorResponseMapper? _instance;
  static ErrorResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ErrorResponse';

  static String? _$error(ErrorResponse v) => v.error;
  static const Field<ErrorResponse, String> _f$error = Field(
    'error',
    _$error,
    opt: true,
  );
  static String? _$errorDescription(ErrorResponse v) => v.errorDescription;
  static const Field<ErrorResponse, String> _f$errorDescription = Field(
    'errorDescription',
    _$errorDescription,
    key: r'error_description',
    opt: true,
  );
  static Map<String, Object?>? _$errorDetails(ErrorResponse v) =>
      v.errorDetails;
  static const Field<ErrorResponse, Map<String, Object?>> _f$errorDetails =
      Field('errorDetails', _$errorDetails, key: r'error_details', opt: true);

  @override
  final MappableFields<ErrorResponse> fields = const {
    #error: _f$error,
    #errorDescription: _f$errorDescription,
    #errorDetails: _f$errorDetails,
  };
  @override
  final bool ignoreNull = true;

  static ErrorResponse _instantiate(DecodingData data) {
    return ErrorResponse(
      error: data.dec(_f$error),
      errorDescription: data.dec(_f$errorDescription),
      errorDetails: data.dec(_f$errorDetails),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ErrorResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ErrorResponse>(map);
  }

  static ErrorResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ErrorResponse>(json);
  }
}

mixin ErrorResponseMappable {
  String toJson() {
    return ErrorResponseMapper.ensureInitialized().encodeJson<ErrorResponse>(
      this as ErrorResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return ErrorResponseMapper.ensureInitialized().encodeMap<ErrorResponse>(
      this as ErrorResponse,
    );
  }

  ErrorResponseCopyWith<ErrorResponse, ErrorResponse, ErrorResponse>
  get copyWith => _ErrorResponseCopyWithImpl<ErrorResponse, ErrorResponse>(
    this as ErrorResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ErrorResponseMapper.ensureInitialized().stringifyValue(
      this as ErrorResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ErrorResponseMapper.ensureInitialized().equalsValue(
      this as ErrorResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ErrorResponseMapper.ensureInitialized().hashValue(
      this as ErrorResponse,
    );
  }
}

extension ErrorResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ErrorResponse, $Out> {
  ErrorResponseCopyWith<$R, ErrorResponse, $Out> get $asErrorResponse =>
      $base.as((v, t, t2) => _ErrorResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ErrorResponseCopyWith<$R, $In extends ErrorResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, Object?, ObjectCopyWith<$R, Object?, Object?>?>?
  get errorDetails;
  $R call({
    String? error,
    String? errorDescription,
    Map<String, Object?>? errorDetails,
  });
  ErrorResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ErrorResponse, $Out>
    implements ErrorResponseCopyWith<$R, ErrorResponse, $Out> {
  _ErrorResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ErrorResponse> $mapper =
      ErrorResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, Object?, ObjectCopyWith<$R, Object?, Object?>?>?
  get errorDetails => $value.errorDetails != null
      ? MapCopyWith(
          $value.errorDetails!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(errorDetails: v),
        )
      : null;
  @override
  $R call({
    Object? error = $none,
    Object? errorDescription = $none,
    Object? errorDetails = $none,
  }) => $apply(
    FieldCopyWithData({
      if (error != $none) #error: error,
      if (errorDescription != $none) #errorDescription: errorDescription,
      if (errorDetails != $none) #errorDetails: errorDetails,
    }),
  );
  @override
  ErrorResponse $make(CopyWithData data) => ErrorResponse(
    error: data.get(#error, or: $value.error),
    errorDescription: data.get(#errorDescription, or: $value.errorDescription),
    errorDetails: data.get(#errorDetails, or: $value.errorDetails),
  );

  @override
  ErrorResponseCopyWith<$R2, ErrorResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ErrorResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

