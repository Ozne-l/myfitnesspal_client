// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entry_food.dart';

class MfpEntryFoodMapper extends ClassMapperBase<MfpEntryFood> {
  MfpEntryFoodMapper._();

  static MfpEntryFoodMapper? _instance;
  static MfpEntryFoodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpEntryFoodMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MfpEntryFood';

  static String _$id(MfpEntryFood v) => v.id;
  static const Field<MfpEntryFood, String> _f$id = Field('id', _$id);
  static String _$description(MfpEntryFood v) => v.description;
  static const Field<MfpEntryFood, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$version(MfpEntryFood v) => v.version;
  static const Field<MfpEntryFood, String> _f$version = Field(
    'version',
    _$version,
    opt: true,
  );
  static String? _$brandName(MfpEntryFood v) => v.brandName;
  static const Field<MfpEntryFood, String> _f$brandName = Field(
    'brandName',
    _$brandName,
    key: r'brand_name',
    opt: true,
  );

  @override
  final MappableFields<MfpEntryFood> fields = const {
    #id: _f$id,
    #description: _f$description,
    #version: _f$version,
    #brandName: _f$brandName,
  };
  @override
  final bool ignoreNull = true;

  static MfpEntryFood _instantiate(DecodingData data) {
    return MfpEntryFood(
      id: data.dec(_f$id),
      description: data.dec(_f$description),
      version: data.dec(_f$version),
      brandName: data.dec(_f$brandName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpEntryFood fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpEntryFood>(map);
  }

  static MfpEntryFood fromJson(String json) {
    return ensureInitialized().decodeJson<MfpEntryFood>(json);
  }
}

mixin MfpEntryFoodMappable {
  String toJson() {
    return MfpEntryFoodMapper.ensureInitialized().encodeJson<MfpEntryFood>(
      this as MfpEntryFood,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpEntryFoodMapper.ensureInitialized().encodeMap<MfpEntryFood>(
      this as MfpEntryFood,
    );
  }

  MfpEntryFoodCopyWith<MfpEntryFood, MfpEntryFood, MfpEntryFood> get copyWith =>
      _MfpEntryFoodCopyWithImpl<MfpEntryFood, MfpEntryFood>(
        this as MfpEntryFood,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpEntryFoodMapper.ensureInitialized().stringifyValue(
      this as MfpEntryFood,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpEntryFoodMapper.ensureInitialized().equalsValue(
      this as MfpEntryFood,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpEntryFoodMapper.ensureInitialized().hashValue(
      this as MfpEntryFood,
    );
  }
}

extension MfpEntryFoodValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpEntryFood, $Out> {
  MfpEntryFoodCopyWith<$R, MfpEntryFood, $Out> get $asMfpEntryFood =>
      $base.as((v, t, t2) => _MfpEntryFoodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpEntryFoodCopyWith<$R, $In extends MfpEntryFood, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? description,
    String? version,
    String? brandName,
  });
  MfpEntryFoodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpEntryFoodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpEntryFood, $Out>
    implements MfpEntryFoodCopyWith<$R, MfpEntryFood, $Out> {
  _MfpEntryFoodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpEntryFood> $mapper =
      MfpEntryFoodMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? description,
    Object? version = $none,
    Object? brandName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (description != null) #description: description,
      if (version != $none) #version: version,
      if (brandName != $none) #brandName: brandName,
    }),
  );
  @override
  MfpEntryFood $make(CopyWithData data) => MfpEntryFood(
    id: data.get(#id, or: $value.id),
    description: data.get(#description, or: $value.description),
    version: data.get(#version, or: $value.version),
    brandName: data.get(#brandName, or: $value.brandName),
  );

  @override
  MfpEntryFoodCopyWith<$R2, MfpEntryFood, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpEntryFoodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

