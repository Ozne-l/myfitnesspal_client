// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_preferences.dart';

class DiaryPreferencesMapper extends ClassMapperBase<DiaryPreferences> {
  DiaryPreferencesMapper._();

  static DiaryPreferencesMapper? _instance;
  static DiaryPreferencesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiaryPreferencesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiaryPreferences';

  static List<String> _$mealNames(DiaryPreferences v) => v.mealNames;
  static const Field<DiaryPreferences, List<String>> _f$mealNames = Field(
    'mealNames',
    _$mealNames,
    key: r'meal_names',
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<DiaryPreferences> fields = const {
    #mealNames: _f$mealNames,
  };
  @override
  final bool ignoreNull = true;

  static DiaryPreferences _instantiate(DecodingData data) {
    return DiaryPreferences(mealNames: data.dec(_f$mealNames));
  }

  @override
  final Function instantiate = _instantiate;

  static DiaryPreferences fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiaryPreferences>(map);
  }

  static DiaryPreferences fromJson(String json) {
    return ensureInitialized().decodeJson<DiaryPreferences>(json);
  }
}

mixin DiaryPreferencesMappable {
  String toJson() {
    return DiaryPreferencesMapper.ensureInitialized()
        .encodeJson<DiaryPreferences>(this as DiaryPreferences);
  }

  Map<String, dynamic> toMap() {
    return DiaryPreferencesMapper.ensureInitialized()
        .encodeMap<DiaryPreferences>(this as DiaryPreferences);
  }

  DiaryPreferencesCopyWith<DiaryPreferences, DiaryPreferences, DiaryPreferences>
  get copyWith =>
      _DiaryPreferencesCopyWithImpl<DiaryPreferences, DiaryPreferences>(
        this as DiaryPreferences,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DiaryPreferencesMapper.ensureInitialized().stringifyValue(
      this as DiaryPreferences,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiaryPreferencesMapper.ensureInitialized().equalsValue(
      this as DiaryPreferences,
      other,
    );
  }

  @override
  int get hashCode {
    return DiaryPreferencesMapper.ensureInitialized().hashValue(
      this as DiaryPreferences,
    );
  }
}

extension DiaryPreferencesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiaryPreferences, $Out> {
  DiaryPreferencesCopyWith<$R, DiaryPreferences, $Out>
  get $asDiaryPreferences =>
      $base.as((v, t, t2) => _DiaryPreferencesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiaryPreferencesCopyWith<$R, $In extends DiaryPreferences, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get mealNames;
  $R call({List<String>? mealNames});
  DiaryPreferencesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DiaryPreferencesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiaryPreferences, $Out>
    implements DiaryPreferencesCopyWith<$R, DiaryPreferences, $Out> {
  _DiaryPreferencesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiaryPreferences> $mapper =
      DiaryPreferencesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get mealNames =>
      ListCopyWith(
        $value.mealNames,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(mealNames: v),
      );
  @override
  $R call({List<String>? mealNames}) =>
      $apply(FieldCopyWithData({if (mealNames != null) #mealNames: mealNames}));
  @override
  DiaryPreferences $make(CopyWithData data) =>
      DiaryPreferences(mealNames: data.get(#mealNames, or: $value.mealNames));

  @override
  DiaryPreferencesCopyWith<$R2, DiaryPreferences, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DiaryPreferencesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

