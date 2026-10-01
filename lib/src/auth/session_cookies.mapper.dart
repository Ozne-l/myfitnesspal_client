// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'session_cookies.dart';

class MfpSessionCookiesMapper extends ClassMapperBase<MfpSessionCookies> {
  MfpSessionCookiesMapper._();

  static MfpSessionCookiesMapper? _instance;
  static MfpSessionCookiesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpSessionCookiesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MfpSessionCookies';

  static Map<String, String> _$values(MfpSessionCookies v) => v.values;
  static const Field<MfpSessionCookies, Map<String, String>> _f$values = Field(
    'values',
    _$values,
  );

  @override
  final MappableFields<MfpSessionCookies> fields = const {#values: _f$values};
  @override
  final bool ignoreNull = true;

  static MfpSessionCookies _instantiate(DecodingData data) {
    return MfpSessionCookies(data.dec(_f$values));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpSessionCookies fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpSessionCookies>(map);
  }

  static MfpSessionCookies fromJson(String json) {
    return ensureInitialized().decodeJson<MfpSessionCookies>(json);
  }
}

mixin MfpSessionCookiesMappable {
  String toJson() {
    return MfpSessionCookiesMapper.ensureInitialized()
        .encodeJson<MfpSessionCookies>(this as MfpSessionCookies);
  }

  Map<String, dynamic> toMap() {
    return MfpSessionCookiesMapper.ensureInitialized()
        .encodeMap<MfpSessionCookies>(this as MfpSessionCookies);
  }

  MfpSessionCookiesCopyWith<
    MfpSessionCookies,
    MfpSessionCookies,
    MfpSessionCookies
  >
  get copyWith =>
      _MfpSessionCookiesCopyWithImpl<MfpSessionCookies, MfpSessionCookies>(
        this as MfpSessionCookies,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpSessionCookiesMapper.ensureInitialized().stringifyValue(
      this as MfpSessionCookies,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpSessionCookiesMapper.ensureInitialized().equalsValue(
      this as MfpSessionCookies,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpSessionCookiesMapper.ensureInitialized().hashValue(
      this as MfpSessionCookies,
    );
  }
}

extension MfpSessionCookiesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpSessionCookies, $Out> {
  MfpSessionCookiesCopyWith<$R, MfpSessionCookies, $Out>
  get $asMfpSessionCookies => $base.as(
    (v, t, t2) => _MfpSessionCookiesCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpSessionCookiesCopyWith<
  $R,
  $In extends MfpSessionCookies,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get values;
  $R call({Map<String, String>? values});
  MfpSessionCookiesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpSessionCookiesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpSessionCookies, $Out>
    implements MfpSessionCookiesCopyWith<$R, MfpSessionCookies, $Out> {
  _MfpSessionCookiesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpSessionCookies> $mapper =
      MfpSessionCookiesMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get values => MapCopyWith(
    $value.values,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(values: v),
  );
  @override
  $R call({Map<String, String>? values}) =>
      $apply(FieldCopyWithData({if (values != null) #values: values}));
  @override
  MfpSessionCookies $make(CopyWithData data) =>
      MfpSessionCookies(data.get(#values, or: $value.values));

  @override
  MfpSessionCookiesCopyWith<$R2, MfpSessionCookies, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpSessionCookiesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

