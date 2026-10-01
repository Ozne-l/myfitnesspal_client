// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_item.dart';

class MfpDiaryItemMapper extends ClassMapperBase<MfpDiaryItem> {
  MfpDiaryItemMapper._();

  static MfpDiaryItemMapper? _instance;
  static MfpDiaryItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpDiaryItemMapper._());
      MfpFoodEntryMapper.ensureInitialized();
      MfpMealTotalsMapper.ensureInitialized();
      MfpOtherDiaryItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpDiaryItem';

  @override
  final MappableFields<MfpDiaryItem> fields = const {};
  @override
  final bool ignoreNull = true;

  static MfpDiaryItem _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'MfpDiaryItem',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpDiaryItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpDiaryItem>(map);
  }

  static MfpDiaryItem fromJson(String json) {
    return ensureInitialized().decodeJson<MfpDiaryItem>(json);
  }
}

mixin MfpDiaryItemMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MfpDiaryItemCopyWith<MfpDiaryItem, MfpDiaryItem, MfpDiaryItem> get copyWith;
}

abstract class MfpDiaryItemCopyWith<$R, $In extends MfpDiaryItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MfpDiaryItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class MfpFoodEntryMapper extends SubClassMapperBase<MfpFoodEntry> {
  MfpFoodEntryMapper._();

  static MfpFoodEntryMapper? _instance;
  static MfpFoodEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpFoodEntryMapper._());
      MfpDiaryItemMapper.ensureInitialized().addSubMapper(_instance!);
      MfpServingSizeMapper.ensureInitialized();
      MfpEntryFoodMapper.ensureInitialized();
      MfpNutrientsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpFoodEntry';

  static DateTime _$date(MfpFoodEntry v) => v.date;
  static const Field<MfpFoodEntry, DateTime> _f$date = Field(
    'date',
    _$date,
    hook: CalendarDateHook(),
  );
  static String _$mealName(MfpFoodEntry v) => v.mealName;
  static const Field<MfpFoodEntry, String> _f$mealName = Field(
    'mealName',
    _$mealName,
    key: r'meal_name',
  );
  static int _$mealPosition(MfpFoodEntry v) => v.mealPosition;
  static const Field<MfpFoodEntry, int> _f$mealPosition = Field(
    'mealPosition',
    _$mealPosition,
    key: r'meal_position',
  );
  static double _$servings(MfpFoodEntry v) => v.servings;
  static const Field<MfpFoodEntry, double> _f$servings = Field(
    'servings',
    _$servings,
  );
  static MfpServingSize _$servingSize(MfpFoodEntry v) => v.servingSize;
  static const Field<MfpFoodEntry, MfpServingSize> _f$servingSize = Field(
    'servingSize',
    _$servingSize,
    key: r'serving_size',
  );
  static MfpEntryFood _$food(MfpFoodEntry v) => v.food;
  static const Field<MfpFoodEntry, MfpEntryFood> _f$food = Field(
    'food',
    _$food,
  );
  static MfpNutrients _$nutrients(MfpFoodEntry v) => v.nutrients;
  static const Field<MfpFoodEntry, MfpNutrients> _f$nutrients = Field(
    'nutrients',
    _$nutrients,
    key: r'nutritional_contents',
  );
  static String? _$id(MfpFoodEntry v) => v.id;
  static const Field<MfpFoodEntry, String> _f$id = Field('id', _$id, opt: true);

  @override
  final MappableFields<MfpFoodEntry> fields = const {
    #date: _f$date,
    #mealName: _f$mealName,
    #mealPosition: _f$mealPosition,
    #servings: _f$servings,
    #servingSize: _f$servingSize,
    #food: _f$food,
    #nutrients: _f$nutrients,
    #id: _f$id,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'food_entry';
  @override
  late final ClassMapperBase superMapper =
      MfpDiaryItemMapper.ensureInitialized();

  static MfpFoodEntry _instantiate(DecodingData data) {
    return MfpFoodEntry(
      date: data.dec(_f$date),
      mealName: data.dec(_f$mealName),
      mealPosition: data.dec(_f$mealPosition),
      servings: data.dec(_f$servings),
      servingSize: data.dec(_f$servingSize),
      food: data.dec(_f$food),
      nutrients: data.dec(_f$nutrients),
      id: data.dec(_f$id),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpFoodEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpFoodEntry>(map);
  }

  static MfpFoodEntry fromJson(String json) {
    return ensureInitialized().decodeJson<MfpFoodEntry>(json);
  }
}

mixin MfpFoodEntryMappable {
  String toJson() {
    return MfpFoodEntryMapper.ensureInitialized().encodeJson<MfpFoodEntry>(
      this as MfpFoodEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpFoodEntryMapper.ensureInitialized().encodeMap<MfpFoodEntry>(
      this as MfpFoodEntry,
    );
  }

  MfpFoodEntryCopyWith<MfpFoodEntry, MfpFoodEntry, MfpFoodEntry> get copyWith =>
      _MfpFoodEntryCopyWithImpl<MfpFoodEntry, MfpFoodEntry>(
        this as MfpFoodEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpFoodEntryMapper.ensureInitialized().stringifyValue(
      this as MfpFoodEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpFoodEntryMapper.ensureInitialized().equalsValue(
      this as MfpFoodEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpFoodEntryMapper.ensureInitialized().hashValue(
      this as MfpFoodEntry,
    );
  }
}

extension MfpFoodEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpFoodEntry, $Out> {
  MfpFoodEntryCopyWith<$R, MfpFoodEntry, $Out> get $asMfpFoodEntry =>
      $base.as((v, t, t2) => _MfpFoodEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpFoodEntryCopyWith<$R, $In extends MfpFoodEntry, $Out>
    implements MfpDiaryItemCopyWith<$R, $In, $Out> {
  MfpServingSizeCopyWith<$R, MfpServingSize, MfpServingSize> get servingSize;
  MfpEntryFoodCopyWith<$R, MfpEntryFood, MfpEntryFood> get food;
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients> get nutrients;
  @override
  $R call({
    DateTime? date,
    String? mealName,
    int? mealPosition,
    double? servings,
    MfpServingSize? servingSize,
    MfpEntryFood? food,
    MfpNutrients? nutrients,
    String? id,
  });
  MfpFoodEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpFoodEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpFoodEntry, $Out>
    implements MfpFoodEntryCopyWith<$R, MfpFoodEntry, $Out> {
  _MfpFoodEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpFoodEntry> $mapper =
      MfpFoodEntryMapper.ensureInitialized();
  @override
  MfpServingSizeCopyWith<$R, MfpServingSize, MfpServingSize> get servingSize =>
      $value.servingSize.copyWith.$chain((v) => call(servingSize: v));
  @override
  MfpEntryFoodCopyWith<$R, MfpEntryFood, MfpEntryFood> get food =>
      $value.food.copyWith.$chain((v) => call(food: v));
  @override
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients> get nutrients =>
      $value.nutrients.copyWith.$chain((v) => call(nutrients: v));
  @override
  $R call({
    DateTime? date,
    String? mealName,
    int? mealPosition,
    double? servings,
    MfpServingSize? servingSize,
    MfpEntryFood? food,
    MfpNutrients? nutrients,
    Object? id = $none,
  }) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (mealName != null) #mealName: mealName,
      if (mealPosition != null) #mealPosition: mealPosition,
      if (servings != null) #servings: servings,
      if (servingSize != null) #servingSize: servingSize,
      if (food != null) #food: food,
      if (nutrients != null) #nutrients: nutrients,
      if (id != $none) #id: id,
    }),
  );
  @override
  MfpFoodEntry $make(CopyWithData data) => MfpFoodEntry(
    date: data.get(#date, or: $value.date),
    mealName: data.get(#mealName, or: $value.mealName),
    mealPosition: data.get(#mealPosition, or: $value.mealPosition),
    servings: data.get(#servings, or: $value.servings),
    servingSize: data.get(#servingSize, or: $value.servingSize),
    food: data.get(#food, or: $value.food),
    nutrients: data.get(#nutrients, or: $value.nutrients),
    id: data.get(#id, or: $value.id),
  );

  @override
  MfpFoodEntryCopyWith<$R2, MfpFoodEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpFoodEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpMealTotalsMapper extends SubClassMapperBase<MfpMealTotals> {
  MfpMealTotalsMapper._();

  static MfpMealTotalsMapper? _instance;
  static MfpMealTotalsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpMealTotalsMapper._());
      MfpDiaryItemMapper.ensureInitialized().addSubMapper(_instance!);
      MfpNutrientsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpMealTotals';

  static DateTime _$date(MfpMealTotals v) => v.date;
  static const Field<MfpMealTotals, DateTime> _f$date = Field(
    'date',
    _$date,
    hook: CalendarDateHook(),
  );
  static String _$mealName(MfpMealTotals v) => v.mealName;
  static const Field<MfpMealTotals, String> _f$mealName = Field(
    'mealName',
    _$mealName,
    key: r'diary_meal',
  );
  static MfpNutrients _$nutrients(MfpMealTotals v) => v.nutrients;
  static const Field<MfpMealTotals, MfpNutrients> _f$nutrients = Field(
    'nutrients',
    _$nutrients,
    key: r'nutritional_contents',
  );

  @override
  final MappableFields<MfpMealTotals> fields = const {
    #date: _f$date,
    #mealName: _f$mealName,
    #nutrients: _f$nutrients,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'diary_meal';
  @override
  late final ClassMapperBase superMapper =
      MfpDiaryItemMapper.ensureInitialized();

  static MfpMealTotals _instantiate(DecodingData data) {
    return MfpMealTotals(
      date: data.dec(_f$date),
      mealName: data.dec(_f$mealName),
      nutrients: data.dec(_f$nutrients),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpMealTotals fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpMealTotals>(map);
  }

  static MfpMealTotals fromJson(String json) {
    return ensureInitialized().decodeJson<MfpMealTotals>(json);
  }
}

mixin MfpMealTotalsMappable {
  String toJson() {
    return MfpMealTotalsMapper.ensureInitialized().encodeJson<MfpMealTotals>(
      this as MfpMealTotals,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpMealTotalsMapper.ensureInitialized().encodeMap<MfpMealTotals>(
      this as MfpMealTotals,
    );
  }

  MfpMealTotalsCopyWith<MfpMealTotals, MfpMealTotals, MfpMealTotals>
  get copyWith => _MfpMealTotalsCopyWithImpl<MfpMealTotals, MfpMealTotals>(
    this as MfpMealTotals,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MfpMealTotalsMapper.ensureInitialized().stringifyValue(
      this as MfpMealTotals,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpMealTotalsMapper.ensureInitialized().equalsValue(
      this as MfpMealTotals,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpMealTotalsMapper.ensureInitialized().hashValue(
      this as MfpMealTotals,
    );
  }
}

extension MfpMealTotalsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpMealTotals, $Out> {
  MfpMealTotalsCopyWith<$R, MfpMealTotals, $Out> get $asMfpMealTotals =>
      $base.as((v, t, t2) => _MfpMealTotalsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpMealTotalsCopyWith<$R, $In extends MfpMealTotals, $Out>
    implements MfpDiaryItemCopyWith<$R, $In, $Out> {
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients> get nutrients;
  @override
  $R call({DateTime? date, String? mealName, MfpNutrients? nutrients});
  MfpMealTotalsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpMealTotalsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpMealTotals, $Out>
    implements MfpMealTotalsCopyWith<$R, MfpMealTotals, $Out> {
  _MfpMealTotalsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpMealTotals> $mapper =
      MfpMealTotalsMapper.ensureInitialized();
  @override
  MfpNutrientsCopyWith<$R, MfpNutrients, MfpNutrients> get nutrients =>
      $value.nutrients.copyWith.$chain((v) => call(nutrients: v));
  @override
  $R call({DateTime? date, String? mealName, MfpNutrients? nutrients}) =>
      $apply(
        FieldCopyWithData({
          if (date != null) #date: date,
          if (mealName != null) #mealName: mealName,
          if (nutrients != null) #nutrients: nutrients,
        }),
      );
  @override
  MfpMealTotals $make(CopyWithData data) => MfpMealTotals(
    date: data.get(#date, or: $value.date),
    mealName: data.get(#mealName, or: $value.mealName),
    nutrients: data.get(#nutrients, or: $value.nutrients),
  );

  @override
  MfpMealTotalsCopyWith<$R2, MfpMealTotals, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpMealTotalsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MfpOtherDiaryItemMapper extends SubClassMapperBase<MfpOtherDiaryItem> {
  MfpOtherDiaryItemMapper._();

  static MfpOtherDiaryItemMapper? _instance;
  static MfpOtherDiaryItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpOtherDiaryItemMapper._());
      MfpDiaryItemMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MfpOtherDiaryItem';

  @override
  final MappableFields<MfpOtherDiaryItem> fields = const {};
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper =
      MfpDiaryItemMapper.ensureInitialized();

  static MfpOtherDiaryItem _instantiate(DecodingData data) {
    return MfpOtherDiaryItem();
  }

  @override
  final Function instantiate = _instantiate;

  static MfpOtherDiaryItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpOtherDiaryItem>(map);
  }

  static MfpOtherDiaryItem fromJson(String json) {
    return ensureInitialized().decodeJson<MfpOtherDiaryItem>(json);
  }
}

mixin MfpOtherDiaryItemMappable {
  String toJson() {
    return MfpOtherDiaryItemMapper.ensureInitialized()
        .encodeJson<MfpOtherDiaryItem>(this as MfpOtherDiaryItem);
  }

  Map<String, dynamic> toMap() {
    return MfpOtherDiaryItemMapper.ensureInitialized()
        .encodeMap<MfpOtherDiaryItem>(this as MfpOtherDiaryItem);
  }

  MfpOtherDiaryItemCopyWith<
    MfpOtherDiaryItem,
    MfpOtherDiaryItem,
    MfpOtherDiaryItem
  >
  get copyWith =>
      _MfpOtherDiaryItemCopyWithImpl<MfpOtherDiaryItem, MfpOtherDiaryItem>(
        this as MfpOtherDiaryItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpOtherDiaryItemMapper.ensureInitialized().stringifyValue(
      this as MfpOtherDiaryItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpOtherDiaryItemMapper.ensureInitialized().equalsValue(
      this as MfpOtherDiaryItem,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpOtherDiaryItemMapper.ensureInitialized().hashValue(
      this as MfpOtherDiaryItem,
    );
  }
}

extension MfpOtherDiaryItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpOtherDiaryItem, $Out> {
  MfpOtherDiaryItemCopyWith<$R, MfpOtherDiaryItem, $Out>
  get $asMfpOtherDiaryItem => $base.as(
    (v, t, t2) => _MfpOtherDiaryItemCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MfpOtherDiaryItemCopyWith<
  $R,
  $In extends MfpOtherDiaryItem,
  $Out
>
    implements MfpDiaryItemCopyWith<$R, $In, $Out> {
  @override
  $R call();
  MfpOtherDiaryItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MfpOtherDiaryItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpOtherDiaryItem, $Out>
    implements MfpOtherDiaryItemCopyWith<$R, MfpOtherDiaryItem, $Out> {
  _MfpOtherDiaryItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpOtherDiaryItem> $mapper =
      MfpOtherDiaryItemMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  MfpOtherDiaryItem $make(CopyWithData data) => MfpOtherDiaryItem();

  @override
  MfpOtherDiaryItemCopyWith<$R2, MfpOtherDiaryItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpOtherDiaryItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

