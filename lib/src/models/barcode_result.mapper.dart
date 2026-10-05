// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'barcode_result.dart';

class MfpBarcodeResultMapper extends ClassMapperBase<MfpBarcodeResult> {
  MfpBarcodeResultMapper._();

  static MfpBarcodeResultMapper? _instance;
  static MfpBarcodeResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeResultMapper._());
      MfpBarcodeFoundMapper.ensureInitialized();
      MfpBarcodeUnknownMapper.ensureInitialized();
      MfpBarcodeUnresolvedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeResult';

  static String _$barcode(MfpBarcodeResult v) => v.barcode;
  static const Field<MfpBarcodeResult, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );

  @override
  final MappableFields<MfpBarcodeResult> fields = const {#barcode: _f$barcode};
  @override
  final bool ignoreNull = true;

  static MfpBarcodeResult _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'MfpBarcodeResult',
      'kind',
      '${data.value['kind']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeResult>(map);
  }

  static MfpBarcodeResult fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeResult>(json);
  }
}

mixin MfpBarcodeResultMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MfpBarcodeResultCopyWith<MfpBarcodeResult, MfpBarcodeResult, MfpBarcodeResult>
  get copyWith;
}

abstract class MfpBarcodeResultCopyWith<$R, $In extends MfpBarcodeResult, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? barcode});
  MfpBarcodeResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class MfpBarcodeFoundMapper extends SubClassMapperBase<MfpBarcodeFound> {
  MfpBarcodeFoundMapper._();

  static MfpBarcodeFoundMapper? _instance;
  static MfpBarcodeFoundMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeFoundMapper._());
      MfpBarcodeResultMapper.ensureInitialized().addSubMapper(_instance!);
      MfpFoodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeFound';

  static String _$barcode(MfpBarcodeFound v) => v.barcode;
  static const Field<MfpBarcodeFound, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );
  static MfpFood _$food(MfpBarcodeFound v) => v.food;
  static const Field<MfpBarcodeFound, MfpFood> _f$food = Field('food', _$food);

  @override
  final MappableFields<MfpBarcodeFound> fields = const {
    #barcode: _f$barcode,
    #food: _f$food,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeFound';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeResultMapper.ensureInitialized();

  static MfpBarcodeFound _instantiate(DecodingData data) {
    return MfpBarcodeFound(data.dec(_f$barcode), data.dec(_f$food));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeFound fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeFound>(map);
  }

  static MfpBarcodeFound fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeFound>(json);
  }
}

mixin MfpBarcodeFoundMappable {
  String toJson() {
    return MfpBarcodeFoundMapper.ensureInitialized()
        .encodeJson<MfpBarcodeFound>(this as MfpBarcodeFound);
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeFoundMapper.ensureInitialized().encodeMap<MfpBarcodeFound>(
      this as MfpBarcodeFound,
    );
  }

  MfpBarcodeFoundCopyWith<MfpBarcodeFound, MfpBarcodeFound, MfpBarcodeFound>
  get copyWith =>
      _MfpBarcodeFoundCopyWithImpl<MfpBarcodeFound, MfpBarcodeFound>(
        this as MfpBarcodeFound,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpBarcodeFoundMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeFound,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeFoundMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeFound,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeFoundMapper.ensureInitialized().hashValue(
      this as MfpBarcodeFound,
    );
  }
}

extension MfpBarcodeFoundValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeFound, $Out> {
  MfpBarcodeFoundCopyWith<$R, MfpBarcodeFound, $Out> get $asMfpBarcodeFound =>
      $base.as((v, t, t2) => _MfpBarcodeFoundCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpBarcodeFoundCopyWith<$R, $In extends MfpBarcodeFound, $Out>
    implements MfpBarcodeResultCopyWith<$R, $In, $Out> {
  MfpFoodCopyWith<$R, MfpFood, MfpFood> get food;
  @override
  $R call({String? barcode, MfpFood? food});
  MfpBarcodeFoundCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeFoundCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeFound, $Out>
    implements MfpBarcodeFoundCopyWith<$R, MfpBarcodeFound, $Out> {
  _MfpBarcodeFoundCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeFound> $mapper =
      MfpBarcodeFoundMapper.ensureInitialized();
  @override
  MfpFoodCopyWith<$R, MfpFood, MfpFood> get food =>
      $value.food.copyWith.$chain((v) => call(food: v));
  @override
  $R call({String? barcode, MfpFood? food}) => $apply(
    FieldCopyWithData({
      if (barcode != null) #barcode: barcode,
      if (food != null) #food: food,
    }),
  );
  @override
  MfpBarcodeFound $make(CopyWithData data) => MfpBarcodeFound(
    data.get(#barcode, or: $value.barcode),
    data.get(#food, or: $value.food),
  );

  @override
  MfpBarcodeFoundCopyWith<$R2, MfpBarcodeFound, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpBarcodeFoundCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpBarcodeUnknownMapper extends SubClassMapperBase<MfpBarcodeUnknown> {
  MfpBarcodeUnknownMapper._();

  static MfpBarcodeUnknownMapper? _instance;
  static MfpBarcodeUnknownMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeUnknownMapper._());
      MfpBarcodeResultMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeUnknown';

  static String _$barcode(MfpBarcodeUnknown v) => v.barcode;
  static const Field<MfpBarcodeUnknown, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );

  @override
  final MappableFields<MfpBarcodeUnknown> fields = const {#barcode: _f$barcode};
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeUnknown';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeResultMapper.ensureInitialized();

  static MfpBarcodeUnknown _instantiate(DecodingData data) {
    return MfpBarcodeUnknown(data.dec(_f$barcode));
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeUnknown fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeUnknown>(map);
  }

  static MfpBarcodeUnknown fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeUnknown>(json);
  }
}

mixin MfpBarcodeUnknownMappable {
  String toJson() {
    return MfpBarcodeUnknownMapper.ensureInitialized()
        .encodeJson<MfpBarcodeUnknown>(this as MfpBarcodeUnknown);
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeUnknownMapper.ensureInitialized()
        .encodeMap<MfpBarcodeUnknown>(this as MfpBarcodeUnknown);
  }

  MfpBarcodeUnknownCopyWith<
    MfpBarcodeUnknown,
    MfpBarcodeUnknown,
    MfpBarcodeUnknown
  >
  get copyWith =>
      _MfpBarcodeUnknownCopyWithImpl<MfpBarcodeUnknown, MfpBarcodeUnknown>(
        this as MfpBarcodeUnknown,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpBarcodeUnknownMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeUnknown,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeUnknownMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeUnknown,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeUnknownMapper.ensureInitialized().hashValue(
      this as MfpBarcodeUnknown,
    );
  }
}

extension MfpBarcodeUnknownValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeUnknown, $Out> {
  MfpBarcodeUnknownCopyWith<$R, MfpBarcodeUnknown, $Out>
  get $asMfpBarcodeUnknown => $base.as(
    (v, t, t2) => _MfpBarcodeUnknownCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpBarcodeUnknownCopyWith<
  $R,
  $In extends MfpBarcodeUnknown,
  $Out
>
    implements MfpBarcodeResultCopyWith<$R, $In, $Out> {
  @override
  $R call({String? barcode});
  MfpBarcodeUnknownCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeUnknownCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeUnknown, $Out>
    implements MfpBarcodeUnknownCopyWith<$R, MfpBarcodeUnknown, $Out> {
  _MfpBarcodeUnknownCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeUnknown> $mapper =
      MfpBarcodeUnknownMapper.ensureInitialized();
  @override
  $R call({String? barcode}) =>
      $apply(FieldCopyWithData({if (barcode != null) #barcode: barcode}));
  @override
  MfpBarcodeUnknown $make(CopyWithData data) =>
      MfpBarcodeUnknown(data.get(#barcode, or: $value.barcode));

  @override
  MfpBarcodeUnknownCopyWith<$R2, MfpBarcodeUnknown, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpBarcodeUnknownCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpBarcodeUnresolvedMapper
    extends SubClassMapperBase<MfpBarcodeUnresolved> {
  MfpBarcodeUnresolvedMapper._();

  static MfpBarcodeUnresolvedMapper? _instance;
  static MfpBarcodeUnresolvedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpBarcodeUnresolvedMapper._());
      MfpBarcodeResultMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpBarcodeUnresolved';

  static String _$barcode(MfpBarcodeUnresolved v) => v.barcode;
  static const Field<MfpBarcodeUnresolved, String> _f$barcode = Field(
    'barcode',
    _$barcode,
  );
  static String _$foodId(MfpBarcodeUnresolved v) => v.foodId;
  static const Field<MfpBarcodeUnresolved, String> _f$foodId = Field(
    'foodId',
    _$foodId,
    key: r'food_id',
  );
  static String _$description(MfpBarcodeUnresolved v) => v.description;
  static const Field<MfpBarcodeUnresolved, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$brandName(MfpBarcodeUnresolved v) => v.brandName;
  static const Field<MfpBarcodeUnresolved, String> _f$brandName = Field(
    'brandName',
    _$brandName,
    key: r'brand_name',
    opt: true,
  );

  @override
  final MappableFields<MfpBarcodeUnresolved> fields = const {
    #barcode: _f$barcode,
    #foodId: _f$foodId,
    #description: _f$description,
    #brandName: _f$brandName,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'MfpBarcodeUnresolved';
  @override
  late final ClassMapperBase superMapper =
      MfpBarcodeResultMapper.ensureInitialized();

  static MfpBarcodeUnresolved _instantiate(DecodingData data) {
    return MfpBarcodeUnresolved(
      data.dec(_f$barcode),
      foodId: data.dec(_f$foodId),
      description: data.dec(_f$description),
      brandName: data.dec(_f$brandName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpBarcodeUnresolved fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpBarcodeUnresolved>(map);
  }

  static MfpBarcodeUnresolved fromJson(String json) {
    return ensureInitialized().decodeJson<MfpBarcodeUnresolved>(json);
  }
}

mixin MfpBarcodeUnresolvedMappable {
  String toJson() {
    return MfpBarcodeUnresolvedMapper.ensureInitialized()
        .encodeJson<MfpBarcodeUnresolved>(this as MfpBarcodeUnresolved);
  }

  Map<String, dynamic> toMap() {
    return MfpBarcodeUnresolvedMapper.ensureInitialized()
        .encodeMap<MfpBarcodeUnresolved>(this as MfpBarcodeUnresolved);
  }

  MfpBarcodeUnresolvedCopyWith<
    MfpBarcodeUnresolved,
    MfpBarcodeUnresolved,
    MfpBarcodeUnresolved
  >
  get copyWith =>
      _MfpBarcodeUnresolvedCopyWithImpl<
        MfpBarcodeUnresolved,
        MfpBarcodeUnresolved
      >(this as MfpBarcodeUnresolved, $identity, $identity);
  @override
  String toString() {
    return MfpBarcodeUnresolvedMapper.ensureInitialized().stringifyValue(
      this as MfpBarcodeUnresolved,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpBarcodeUnresolvedMapper.ensureInitialized().equalsValue(
      this as MfpBarcodeUnresolved,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpBarcodeUnresolvedMapper.ensureInitialized().hashValue(
      this as MfpBarcodeUnresolved,
    );
  }
}

extension MfpBarcodeUnresolvedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpBarcodeUnresolved, $Out> {
  MfpBarcodeUnresolvedCopyWith<$R, MfpBarcodeUnresolved, $Out>
  get $asMfpBarcodeUnresolved => $base.as(
    (v, t, t2) => _MfpBarcodeUnresolvedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpBarcodeUnresolvedCopyWith<
  $R,
  $In extends MfpBarcodeUnresolved,
  $Out
>
    implements MfpBarcodeResultCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? barcode,
    String? foodId,
    String? description,
    String? brandName,
  });
  MfpBarcodeUnresolvedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpBarcodeUnresolvedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpBarcodeUnresolved, $Out>
    implements MfpBarcodeUnresolvedCopyWith<$R, MfpBarcodeUnresolved, $Out> {
  _MfpBarcodeUnresolvedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpBarcodeUnresolved> $mapper =
      MfpBarcodeUnresolvedMapper.ensureInitialized();
  @override
  $R call({
    String? barcode,
    String? foodId,
    String? description,
    Object? brandName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (barcode != null) #barcode: barcode,
      if (foodId != null) #foodId: foodId,
      if (description != null) #description: description,
      if (brandName != $none) #brandName: brandName,
    }),
  );
  @override
  MfpBarcodeUnresolved $make(CopyWithData data) => MfpBarcodeUnresolved(
    data.get(#barcode, or: $value.barcode),
    foodId: data.get(#foodId, or: $value.foodId),
    description: data.get(#description, or: $value.description),
    brandName: data.get(#brandName, or: $value.brandName),
  );

  @override
  MfpBarcodeUnresolvedCopyWith<$R2, MfpBarcodeUnresolved, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MfpBarcodeUnresolvedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

