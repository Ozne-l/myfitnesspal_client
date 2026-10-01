// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_token_response.dart';

class AuthTokenResponseMapper extends ClassMapperBase<AuthTokenResponse> {
  AuthTokenResponseMapper._();

  static AuthTokenResponseMapper? _instance;
  static AuthTokenResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthTokenResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthTokenResponse';

  static String _$accessToken(AuthTokenResponse v) => v.accessToken;
  static const Field<AuthTokenResponse, String> _f$accessToken = Field(
    'accessToken',
    _$accessToken,
    key: r'access_token',
  );
  static String _$tokenType(AuthTokenResponse v) => v.tokenType;
  static const Field<AuthTokenResponse, String> _f$tokenType = Field(
    'tokenType',
    _$tokenType,
    key: r'token_type',
  );
  static int _$expiresIn(AuthTokenResponse v) => v.expiresIn;
  static const Field<AuthTokenResponse, int> _f$expiresIn = Field(
    'expiresIn',
    _$expiresIn,
    key: r'expires_in',
  );
  static String _$userId(AuthTokenResponse v) => v.userId;
  static const Field<AuthTokenResponse, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );

  @override
  final MappableFields<AuthTokenResponse> fields = const {
    #accessToken: _f$accessToken,
    #tokenType: _f$tokenType,
    #expiresIn: _f$expiresIn,
    #userId: _f$userId,
  };
  @override
  final bool ignoreNull = true;

  static AuthTokenResponse _instantiate(DecodingData data) {
    return AuthTokenResponse(
      accessToken: data.dec(_f$accessToken),
      tokenType: data.dec(_f$tokenType),
      expiresIn: data.dec(_f$expiresIn),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AuthTokenResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthTokenResponse>(map);
  }

  static AuthTokenResponse fromJson(String json) {
    return ensureInitialized().decodeJson<AuthTokenResponse>(json);
  }
}

mixin AuthTokenResponseMappable {
  String toJson() {
    return AuthTokenResponseMapper.ensureInitialized()
        .encodeJson<AuthTokenResponse>(this as AuthTokenResponse);
  }

  Map<String, dynamic> toMap() {
    return AuthTokenResponseMapper.ensureInitialized()
        .encodeMap<AuthTokenResponse>(this as AuthTokenResponse);
  }

  AuthTokenResponseCopyWith<
    AuthTokenResponse,
    AuthTokenResponse,
    AuthTokenResponse
  >
  get copyWith =>
      _AuthTokenResponseCopyWithImpl<AuthTokenResponse, AuthTokenResponse>(
        this as AuthTokenResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AuthTokenResponseMapper.ensureInitialized().stringifyValue(
      this as AuthTokenResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return AuthTokenResponseMapper.ensureInitialized().equalsValue(
      this as AuthTokenResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return AuthTokenResponseMapper.ensureInitialized().hashValue(
      this as AuthTokenResponse,
    );
  }
}

extension AuthTokenResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthTokenResponse, $Out> {
  AuthTokenResponseCopyWith<$R, AuthTokenResponse, $Out>
  get $asAuthTokenResponse => $base.as(
    (v, t, t2) => _AuthTokenResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AuthTokenResponseCopyWith<
  $R,
  $In extends AuthTokenResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? userId,
  });
  AuthTokenResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuthTokenResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthTokenResponse, $Out>
    implements AuthTokenResponseCopyWith<$R, AuthTokenResponse, $Out> {
  _AuthTokenResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthTokenResponse> $mapper =
      AuthTokenResponseMapper.ensureInitialized();
  @override
  $R call({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? userId,
  }) => $apply(
    FieldCopyWithData({
      if (accessToken != null) #accessToken: accessToken,
      if (tokenType != null) #tokenType: tokenType,
      if (expiresIn != null) #expiresIn: expiresIn,
      if (userId != null) #userId: userId,
    }),
  );
  @override
  AuthTokenResponse $make(CopyWithData data) => AuthTokenResponse(
    accessToken: data.get(#accessToken, or: $value.accessToken),
    tokenType: data.get(#tokenType, or: $value.tokenType),
    expiresIn: data.get(#expiresIn, or: $value.expiresIn),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  AuthTokenResponseCopyWith<$R2, AuthTokenResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AuthTokenResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

