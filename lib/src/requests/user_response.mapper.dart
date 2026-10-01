// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_response.dart';

class UserResponseMapper extends ClassMapperBase<UserResponse> {
  UserResponseMapper._();

  static UserResponseMapper? _instance;
  static UserResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserResponseMapper._());
      UserItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserResponse';

  static UserItem _$item(UserResponse v) => v.item;
  static const Field<UserResponse, UserItem> _f$item = Field('item', _$item);

  @override
  final MappableFields<UserResponse> fields = const {#item: _f$item};
  @override
  final bool ignoreNull = true;

  static UserResponse _instantiate(DecodingData data) {
    return UserResponse(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static UserResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserResponse>(map);
  }

  static UserResponse fromJson(String json) {
    return ensureInitialized().decodeJson<UserResponse>(json);
  }
}

mixin UserResponseMappable {
  String toJson() {
    return UserResponseMapper.ensureInitialized().encodeJson<UserResponse>(
      this as UserResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return UserResponseMapper.ensureInitialized().encodeMap<UserResponse>(
      this as UserResponse,
    );
  }

  UserResponseCopyWith<UserResponse, UserResponse, UserResponse> get copyWith =>
      _UserResponseCopyWithImpl<UserResponse, UserResponse>(
        this as UserResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserResponseMapper.ensureInitialized().stringifyValue(
      this as UserResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserResponseMapper.ensureInitialized().equalsValue(
      this as UserResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return UserResponseMapper.ensureInitialized().hashValue(
      this as UserResponse,
    );
  }
}

extension UserResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserResponse, $Out> {
  UserResponseCopyWith<$R, UserResponse, $Out> get $asUserResponse =>
      $base.as((v, t, t2) => _UserResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserResponseCopyWith<$R, $In extends UserResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserItemCopyWith<$R, UserItem, UserItem> get item;
  $R call({UserItem? item});
  UserResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserResponse, $Out>
    implements UserResponseCopyWith<$R, UserResponse, $Out> {
  _UserResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserResponse> $mapper =
      UserResponseMapper.ensureInitialized();
  @override
  UserItemCopyWith<$R, UserItem, UserItem> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({UserItem? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  UserResponse $make(CopyWithData data) =>
      UserResponse(item: data.get(#item, or: $value.item));

  @override
  UserResponseCopyWith<$R2, UserResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

