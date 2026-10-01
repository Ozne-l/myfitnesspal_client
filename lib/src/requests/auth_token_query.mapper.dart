// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_token_query.dart';

class AuthTokenQueryMapper extends ClassMapperBase<AuthTokenQuery> {
  AuthTokenQueryMapper._();

  static AuthTokenQueryMapper? _instance;
  static AuthTokenQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthTokenQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthTokenQuery';

  static bool _$refresh(AuthTokenQuery v) => v.refresh;
  static const Field<AuthTokenQuery, bool> _f$refresh = Field(
    'refresh',
    _$refresh,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<AuthTokenQuery> fields = const {#refresh: _f$refresh};
  @override
  final bool ignoreNull = true;

  static AuthTokenQuery _instantiate(DecodingData data) {
    return AuthTokenQuery(refresh: data.dec(_f$refresh));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthTokenQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthTokenQuery>(map);
  }

  static AuthTokenQuery fromJson(String json) {
    return ensureInitialized().decodeJson<AuthTokenQuery>(json);
  }
}

mixin AuthTokenQueryMappable {
  String toJson() {
    return AuthTokenQueryMapper.ensureInitialized().encodeJson<AuthTokenQuery>(
      this as AuthTokenQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return AuthTokenQueryMapper.ensureInitialized().encodeMap<AuthTokenQuery>(
      this as AuthTokenQuery,
    );
  }

  AuthTokenQueryCopyWith<AuthTokenQuery, AuthTokenQuery, AuthTokenQuery>
  get copyWith => _AuthTokenQueryCopyWithImpl<AuthTokenQuery, AuthTokenQuery>(
    this as AuthTokenQuery,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return AuthTokenQueryMapper.ensureInitialized().stringifyValue(
      this as AuthTokenQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return AuthTokenQueryMapper.ensureInitialized().equalsValue(
      this as AuthTokenQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return AuthTokenQueryMapper.ensureInitialized().hashValue(
      this as AuthTokenQuery,
    );
  }
}

extension AuthTokenQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthTokenQuery, $Out> {
  AuthTokenQueryCopyWith<$R, AuthTokenQuery, $Out> get $asAuthTokenQuery =>
      $base.as((v, t, t2) => _AuthTokenQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthTokenQueryCopyWith<$R, $In extends AuthTokenQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? refresh});
  AuthTokenQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuthTokenQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthTokenQuery, $Out>
    implements AuthTokenQueryCopyWith<$R, AuthTokenQuery, $Out> {
  _AuthTokenQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthTokenQuery> $mapper =
      AuthTokenQueryMapper.ensureInitialized();
  @override
  $R call({bool? refresh}) =>
      $apply(FieldCopyWithData({if (refresh != null) #refresh: refresh}));
  @override
  AuthTokenQuery $make(CopyWithData data) =>
      AuthTokenQuery(refresh: data.get(#refresh, or: $value.refresh));

  @override
  AuthTokenQueryCopyWith<$R2, AuthTokenQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AuthTokenQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

