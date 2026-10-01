// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_version_request.dart';

class FoodVersionRequestMapper extends ClassMapperBase<FoodVersionRequest> {
  FoodVersionRequestMapper._();

  static FoodVersionRequestMapper? _instance;
  static FoodVersionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodVersionRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FoodVersionRequest';

  static String _$id(FoodVersionRequest v) => v.id;
  static const Field<FoodVersionRequest, String> _f$id = Field('id', _$id);
  static String _$version(FoodVersionRequest v) => v.version;
  static const Field<FoodVersionRequest, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<FoodVersionRequest> fields = const {
    #id: _f$id,
    #version: _f$version,
  };
  @override
  final bool ignoreNull = true;

  static FoodVersionRequest _instantiate(DecodingData data) {
    return FoodVersionRequest(
      id: data.dec(_f$id),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FoodVersionRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodVersionRequest>(map);
  }

  static FoodVersionRequest fromJson(String json) {
    return ensureInitialized().decodeJson<FoodVersionRequest>(json);
  }
}

mixin FoodVersionRequestMappable {
  String toJson() {
    return FoodVersionRequestMapper.ensureInitialized()
        .encodeJson<FoodVersionRequest>(this as FoodVersionRequest);
  }

  Map<String, dynamic> toMap() {
    return FoodVersionRequestMapper.ensureInitialized()
        .encodeMap<FoodVersionRequest>(this as FoodVersionRequest);
  }

  FoodVersionRequestCopyWith<
    FoodVersionRequest,
    FoodVersionRequest,
    FoodVersionRequest
  >
  get copyWith =>
      _FoodVersionRequestCopyWithImpl<FoodVersionRequest, FoodVersionRequest>(
        this as FoodVersionRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodVersionRequestMapper.ensureInitialized().stringifyValue(
      this as FoodVersionRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodVersionRequestMapper.ensureInitialized().equalsValue(
      this as FoodVersionRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodVersionRequestMapper.ensureInitialized().hashValue(
      this as FoodVersionRequest,
    );
  }
}

extension FoodVersionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodVersionRequest, $Out> {
  FoodVersionRequestCopyWith<$R, FoodVersionRequest, $Out>
  get $asFoodVersionRequest => $base.as(
    (v, t, t2) => _FoodVersionRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FoodVersionRequestCopyWith<
  $R,
  $In extends FoodVersionRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? version});
  FoodVersionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FoodVersionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodVersionRequest, $Out>
    implements FoodVersionRequestCopyWith<$R, FoodVersionRequest, $Out> {
  _FoodVersionRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodVersionRequest> $mapper =
      FoodVersionRequestMapper.ensureInitialized();
  @override
  $R call({String? id, String? version}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (version != null) #version: version,
    }),
  );
  @override
  FoodVersionRequest $make(CopyWithData data) => FoodVersionRequest(
    id: data.get(#id, or: $value.id),
    version: data.get(#version, or: $value.version),
  );

  @override
  FoodVersionRequestCopyWith<$R2, FoodVersionRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodVersionRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

