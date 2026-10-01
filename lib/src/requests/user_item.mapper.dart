// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_item.dart';

class UserItemMapper extends ClassMapperBase<UserItem> {
  UserItemMapper._();

  static UserItemMapper? _instance;
  static UserItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserItemMapper._());
      DiaryPreferencesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserItem';

  static DiaryPreferences _$diaryPreferences(UserItem v) => v.diaryPreferences;
  static const Field<UserItem, DiaryPreferences> _f$diaryPreferences = Field(
    'diaryPreferences',
    _$diaryPreferences,
    key: r'diary_preferences',
  );

  @override
  final MappableFields<UserItem> fields = const {
    #diaryPreferences: _f$diaryPreferences,
  };
  @override
  final bool ignoreNull = true;

  static UserItem _instantiate(DecodingData data) {
    return UserItem(diaryPreferences: data.dec(_f$diaryPreferences));
  }

  @override
  final Function instantiate = _instantiate;

  static UserItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserItem>(map);
  }

  static UserItem fromJson(String json) {
    return ensureInitialized().decodeJson<UserItem>(json);
  }
}

mixin UserItemMappable {
  String toJson() {
    return UserItemMapper.ensureInitialized().encodeJson<UserItem>(
      this as UserItem,
    );
  }

  Map<String, dynamic> toMap() {
    return UserItemMapper.ensureInitialized().encodeMap<UserItem>(
      this as UserItem,
    );
  }

  UserItemCopyWith<UserItem, UserItem, UserItem> get copyWith =>
      _UserItemCopyWithImpl<UserItem, UserItem>(
        this as UserItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserItemMapper.ensureInitialized().stringifyValue(this as UserItem);
  }

  @override
  bool operator ==(Object other) {
    return UserItemMapper.ensureInitialized().equalsValue(
      this as UserItem,
      other,
    );
  }

  @override
  int get hashCode {
    return UserItemMapper.ensureInitialized().hashValue(this as UserItem);
  }
}

extension UserItemValueCopy<$R, $Out> on ObjectCopyWith<$R, UserItem, $Out> {
  UserItemCopyWith<$R, UserItem, $Out> get $asUserItem =>
      $base.as((v, t, t2) => _UserItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserItemCopyWith<$R, $In extends UserItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  DiaryPreferencesCopyWith<$R, DiaryPreferences, DiaryPreferences>
  get diaryPreferences;
  $R call({DiaryPreferences? diaryPreferences});
  UserItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserItem, $Out>
    implements UserItemCopyWith<$R, UserItem, $Out> {
  _UserItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserItem> $mapper =
      UserItemMapper.ensureInitialized();
  @override
  DiaryPreferencesCopyWith<$R, DiaryPreferences, DiaryPreferences>
  get diaryPreferences =>
      $value.diaryPreferences.copyWith.$chain((v) => call(diaryPreferences: v));
  @override
  $R call({DiaryPreferences? diaryPreferences}) => $apply(
    FieldCopyWithData({
      if (diaryPreferences != null) #diaryPreferences: diaryPreferences,
    }),
  );
  @override
  UserItem $make(CopyWithData data) => UserItem(
    diaryPreferences: data.get(#diaryPreferences, or: $value.diaryPreferences),
  );

  @override
  UserItemCopyWith<$R2, UserItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

