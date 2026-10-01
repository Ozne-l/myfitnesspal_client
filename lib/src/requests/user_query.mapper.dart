// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_query.dart';

class UserQueryMapper extends ClassMapperBase<UserQuery> {
  UserQueryMapper._();

  static UserQueryMapper? _instance;
  static UserQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserQueryMapper._());
      UserFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserQuery';

  static List<UserField> _$fields(UserQuery v) => v.fields;
  static const Field<UserQuery, List<UserField>> _f$fields = Field(
    'fields',
    _$fields,
    key: r'fields[]',
    opt: true,
    def: const [UserField.diaryPreferences],
  );

  @override
  final MappableFields<UserQuery> fields = const {#fields: _f$fields};
  @override
  final bool ignoreNull = true;

  static UserQuery _instantiate(DecodingData data) {
    return UserQuery(fields: data.dec(_f$fields));
  }

  @override
  final Function instantiate = _instantiate;

  static UserQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserQuery>(map);
  }

  static UserQuery fromJson(String json) {
    return ensureInitialized().decodeJson<UserQuery>(json);
  }
}

mixin UserQueryMappable {
  String toJson() {
    return UserQueryMapper.ensureInitialized().encodeJson<UserQuery>(
      this as UserQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return UserQueryMapper.ensureInitialized().encodeMap<UserQuery>(
      this as UserQuery,
    );
  }

  UserQueryCopyWith<UserQuery, UserQuery, UserQuery> get copyWith =>
      _UserQueryCopyWithImpl<UserQuery, UserQuery>(
        this as UserQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserQueryMapper.ensureInitialized().stringifyValue(
      this as UserQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserQueryMapper.ensureInitialized().equalsValue(
      this as UserQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return UserQueryMapper.ensureInitialized().hashValue(this as UserQuery);
  }
}

extension UserQueryValueCopy<$R, $Out> on ObjectCopyWith<$R, UserQuery, $Out> {
  UserQueryCopyWith<$R, UserQuery, $Out> get $asUserQuery =>
      $base.as((v, t, t2) => _UserQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserQueryCopyWith<$R, $In extends UserQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, UserField, ObjectCopyWith<$R, UserField, UserField>>
  get fields;
  $R call({List<UserField>? fields});
  UserQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserQuery, $Out>
    implements UserQueryCopyWith<$R, UserQuery, $Out> {
  _UserQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserQuery> $mapper =
      UserQueryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, UserField, ObjectCopyWith<$R, UserField, UserField>>
  get fields => ListCopyWith(
    $value.fields,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(fields: v),
  );
  @override
  $R call({List<UserField>? fields}) =>
      $apply(FieldCopyWithData({if (fields != null) #fields: fields}));
  @override
  UserQuery $make(CopyWithData data) =>
      UserQuery(fields: data.get(#fields, or: $value.fields));

  @override
  UserQueryCopyWith<$R2, UserQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

