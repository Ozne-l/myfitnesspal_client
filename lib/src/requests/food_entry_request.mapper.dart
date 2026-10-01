// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_entry_request.dart';

class FoodEntryRequestMapper extends ClassMapperBase<FoodEntryRequest> {
  FoodEntryRequestMapper._();

  static FoodEntryRequestMapper? _instance;
  static FoodEntryRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodEntryRequestMapper._());
      FoodVersionRequestMapper.ensureInitialized();
      ServingSizeRequestMapper.ensureInitialized();
      DiaryItemTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodEntryRequest';

  static String _$date(FoodEntryRequest v) => v.date;
  static const Field<FoodEntryRequest, String> _f$date = Field('date', _$date);
  static String _$mealName(FoodEntryRequest v) => v.mealName;
  static const Field<FoodEntryRequest, String> _f$mealName = Field(
    'mealName',
    _$mealName,
    key: r'meal_name',
  );
  static double _$servings(FoodEntryRequest v) => v.servings;
  static const Field<FoodEntryRequest, double> _f$servings = Field(
    'servings',
    _$servings,
  );
  static FoodVersionRequest _$food(FoodEntryRequest v) => v.food;
  static const Field<FoodEntryRequest, FoodVersionRequest> _f$food = Field(
    'food',
    _$food,
  );
  static ServingSizeRequest _$servingSize(FoodEntryRequest v) => v.servingSize;
  static const Field<FoodEntryRequest, ServingSizeRequest> _f$servingSize =
      Field('servingSize', _$servingSize, key: r'serving_size');
  static DiaryItemType _$type(FoodEntryRequest v) => v.type;
  static const Field<FoodEntryRequest, DiaryItemType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: DiaryItemType.foodEntry,
  );

  @override
  final MappableFields<FoodEntryRequest> fields = const {
    #date: _f$date,
    #mealName: _f$mealName,
    #servings: _f$servings,
    #food: _f$food,
    #servingSize: _f$servingSize,
    #type: _f$type,
  };
  @override
  final bool ignoreNull = true;

  static FoodEntryRequest _instantiate(DecodingData data) {
    return FoodEntryRequest(
      date: data.dec(_f$date),
      mealName: data.dec(_f$mealName),
      servings: data.dec(_f$servings),
      food: data.dec(_f$food),
      servingSize: data.dec(_f$servingSize),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FoodEntryRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodEntryRequest>(map);
  }

  static FoodEntryRequest fromJson(String json) {
    return ensureInitialized().decodeJson<FoodEntryRequest>(json);
  }
}

mixin FoodEntryRequestMappable {
  String toJson() {
    return FoodEntryRequestMapper.ensureInitialized()
        .encodeJson<FoodEntryRequest>(this as FoodEntryRequest);
  }

  Map<String, dynamic> toMap() {
    return FoodEntryRequestMapper.ensureInitialized()
        .encodeMap<FoodEntryRequest>(this as FoodEntryRequest);
  }

  FoodEntryRequestCopyWith<FoodEntryRequest, FoodEntryRequest, FoodEntryRequest>
  get copyWith =>
      _FoodEntryRequestCopyWithImpl<FoodEntryRequest, FoodEntryRequest>(
        this as FoodEntryRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodEntryRequestMapper.ensureInitialized().stringifyValue(
      this as FoodEntryRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodEntryRequestMapper.ensureInitialized().equalsValue(
      this as FoodEntryRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodEntryRequestMapper.ensureInitialized().hashValue(
      this as FoodEntryRequest,
    );
  }
}

extension FoodEntryRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodEntryRequest, $Out> {
  FoodEntryRequestCopyWith<$R, FoodEntryRequest, $Out>
  get $asFoodEntryRequest =>
      $base.as((v, t, t2) => _FoodEntryRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodEntryRequestCopyWith<$R, $In extends FoodEntryRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FoodVersionRequestCopyWith<$R, FoodVersionRequest, FoodVersionRequest>
  get food;
  ServingSizeRequestCopyWith<$R, ServingSizeRequest, ServingSizeRequest>
  get servingSize;
  $R call({
    String? date,
    String? mealName,
    double? servings,
    FoodVersionRequest? food,
    ServingSizeRequest? servingSize,
    DiaryItemType? type,
  });
  FoodEntryRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FoodEntryRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodEntryRequest, $Out>
    implements FoodEntryRequestCopyWith<$R, FoodEntryRequest, $Out> {
  _FoodEntryRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodEntryRequest> $mapper =
      FoodEntryRequestMapper.ensureInitialized();
  @override
  FoodVersionRequestCopyWith<$R, FoodVersionRequest, FoodVersionRequest>
  get food => $value.food.copyWith.$chain((v) => call(food: v));
  @override
  ServingSizeRequestCopyWith<$R, ServingSizeRequest, ServingSizeRequest>
  get servingSize =>
      $value.servingSize.copyWith.$chain((v) => call(servingSize: v));
  @override
  $R call({
    String? date,
    String? mealName,
    double? servings,
    FoodVersionRequest? food,
    ServingSizeRequest? servingSize,
    DiaryItemType? type,
  }) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (mealName != null) #mealName: mealName,
      if (servings != null) #servings: servings,
      if (food != null) #food: food,
      if (servingSize != null) #servingSize: servingSize,
      if (type != null) #type: type,
    }),
  );
  @override
  FoodEntryRequest $make(CopyWithData data) => FoodEntryRequest(
    date: data.get(#date, or: $value.date),
    mealName: data.get(#mealName, or: $value.mealName),
    servings: data.get(#servings, or: $value.servings),
    food: data.get(#food, or: $value.food),
    servingSize: data.get(#servingSize, or: $value.servingSize),
    type: data.get(#type, or: $value.type),
  );

  @override
  FoodEntryRequestCopyWith<$R2, FoodEntryRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodEntryRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

