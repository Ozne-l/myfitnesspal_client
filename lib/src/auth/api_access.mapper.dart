// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_access.dart';

class ApiAccessMapper extends ClassMapperBase<ApiAccess> {
  ApiAccessMapper._();

  static ApiAccessMapper? _instance;
  static ApiAccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiAccessMapper._());
      MfpSessionCookiesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiAccess';

  static MfpSessionCookies _$cookies(ApiAccess v) => v.cookies;
  static const Field<ApiAccess, MfpSessionCookies> _f$cookies = Field(
    'cookies',
    _$cookies,
  );
  static String _$authorization(ApiAccess v) => v.authorization;
  static const Field<ApiAccess, String> _f$authorization = Field(
    'authorization',
    _$authorization,
  );
  static String _$userId(ApiAccess v) => v.userId;
  static const Field<ApiAccess, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$expiresAt(ApiAccess v) => v.expiresAt;
  static const Field<ApiAccess, DateTime> _f$expiresAt = Field(
    'expiresAt',
    _$expiresAt,
    key: r'expires_at',
  );

  @override
  final MappableFields<ApiAccess> fields = const {
    #cookies: _f$cookies,
    #authorization: _f$authorization,
    #userId: _f$userId,
    #expiresAt: _f$expiresAt,
  };
  @override
  final bool ignoreNull = true;

  static ApiAccess _instantiate(DecodingData data) {
    return ApiAccess(
      cookies: data.dec(_f$cookies),
      authorization: data.dec(_f$authorization),
      userId: data.dec(_f$userId),
      expiresAt: data.dec(_f$expiresAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ApiAccess fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiAccess>(map);
  }

  static ApiAccess fromJson(String json) {
    return ensureInitialized().decodeJson<ApiAccess>(json);
  }
}

mixin ApiAccessMappable {
  String toJson() {
    return ApiAccessMapper.ensureInitialized().encodeJson<ApiAccess>(
      this as ApiAccess,
    );
  }

  Map<String, dynamic> toMap() {
    return ApiAccessMapper.ensureInitialized().encodeMap<ApiAccess>(
      this as ApiAccess,
    );
  }

  ApiAccessCopyWith<ApiAccess, ApiAccess, ApiAccess> get copyWith =>
      _ApiAccessCopyWithImpl<ApiAccess, ApiAccess>(
        this as ApiAccess,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ApiAccessMapper.ensureInitialized().stringifyValue(
      this as ApiAccess,
    );
  }

  @override
  bool operator ==(Object other) {
    return ApiAccessMapper.ensureInitialized().equalsValue(
      this as ApiAccess,
      other,
    );
  }

  @override
  int get hashCode {
    return ApiAccessMapper.ensureInitialized().hashValue(this as ApiAccess);
  }
}

extension ApiAccessValueCopy<$R, $Out> on ObjectCopyWith<$R, ApiAccess, $Out> {
  ApiAccessCopyWith<$R, ApiAccess, $Out> get $asApiAccess =>
      $base.as((v, t, t2) => _ApiAccessCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApiAccessCopyWith<$R, $In extends ApiAccess, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MfpSessionCookiesCopyWith<$R, MfpSessionCookies, MfpSessionCookies>
  get cookies;
  $R call({
    MfpSessionCookies? cookies,
    String? authorization,
    String? userId,
    DateTime? expiresAt,
  });
  ApiAccessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiAccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiAccess, $Out>
    implements ApiAccessCopyWith<$R, ApiAccess, $Out> {
  _ApiAccessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiAccess> $mapper =
      ApiAccessMapper.ensureInitialized();
  @override
  MfpSessionCookiesCopyWith<$R, MfpSessionCookies, MfpSessionCookies>
  get cookies => $value.cookies.copyWith.$chain((v) => call(cookies: v));
  @override
  $R call({
    MfpSessionCookies? cookies,
    String? authorization,
    String? userId,
    DateTime? expiresAt,
  }) => $apply(
    FieldCopyWithData({
      if (cookies != null) #cookies: cookies,
      if (authorization != null) #authorization: authorization,
      if (userId != null) #userId: userId,
      if (expiresAt != null) #expiresAt: expiresAt,
    }),
  );
  @override
  ApiAccess $make(CopyWithData data) => ApiAccess(
    cookies: data.get(#cookies, or: $value.cookies),
    authorization: data.get(#authorization, or: $value.authorization),
    userId: data.get(#userId, or: $value.userId),
    expiresAt: data.get(#expiresAt, or: $value.expiresAt),
  );

  @override
  ApiAccessCopyWith<$R2, ApiAccess, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiAccessCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

