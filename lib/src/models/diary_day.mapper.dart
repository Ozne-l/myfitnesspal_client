// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diary_day.dart';

class MfpDiaryDayMapper extends ClassMapperBase<MfpDiaryDay> {
  MfpDiaryDayMapper._();

  static MfpDiaryDayMapper? _instance;
  static MfpDiaryDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpDiaryDayMapper._());
      MfpFoodEntryMapper.ensureInitialized();
      MfpMealTotalsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpDiaryDay';

  static DateTime _$date(MfpDiaryDay v) => v.date;
  static const Field<MfpDiaryDay, DateTime> _f$date = Field('date', _$date);
  static List<MfpFoodEntry> _$entries(MfpDiaryDay v) => v.entries;
  static const Field<MfpDiaryDay, List<MfpFoodEntry>> _f$entries = Field(
    'entries',
    _$entries,
    opt: true,
    def: const [],
  );
  static List<MfpMealTotals> _$mealTotals(MfpDiaryDay v) => v.mealTotals;
  static const Field<MfpDiaryDay, List<MfpMealTotals>> _f$mealTotals = Field(
    'mealTotals',
    _$mealTotals,
    key: r'meal_totals',
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MfpDiaryDay> fields = const {
    #date: _f$date,
    #entries: _f$entries,
    #mealTotals: _f$mealTotals,
  };
  @override
  final bool ignoreNull = true;

  static MfpDiaryDay _instantiate(DecodingData data) {
    return MfpDiaryDay(
      date: data.dec(_f$date),
      entries: data.dec(_f$entries),
      mealTotals: data.dec(_f$mealTotals),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpDiaryDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpDiaryDay>(map);
  }

  static MfpDiaryDay fromJson(String json) {
    return ensureInitialized().decodeJson<MfpDiaryDay>(json);
  }
}

mixin MfpDiaryDayMappable {
  String toJson() {
    return MfpDiaryDayMapper.ensureInitialized().encodeJson<MfpDiaryDay>(
      this as MfpDiaryDay,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpDiaryDayMapper.ensureInitialized().encodeMap<MfpDiaryDay>(
      this as MfpDiaryDay,
    );
  }

  MfpDiaryDayCopyWith<MfpDiaryDay, MfpDiaryDay, MfpDiaryDay> get copyWith =>
      _MfpDiaryDayCopyWithImpl<MfpDiaryDay, MfpDiaryDay>(
        this as MfpDiaryDay,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpDiaryDayMapper.ensureInitialized().stringifyValue(
      this as MfpDiaryDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpDiaryDayMapper.ensureInitialized().equalsValue(
      this as MfpDiaryDay,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpDiaryDayMapper.ensureInitialized().hashValue(this as MfpDiaryDay);
  }
}

extension MfpDiaryDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpDiaryDay, $Out> {
  MfpDiaryDayCopyWith<$R, MfpDiaryDay, $Out> get $asMfpDiaryDay =>
      $base.as((v, t, t2) => _MfpDiaryDayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpDiaryDayCopyWith<$R, $In extends MfpDiaryDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MfpFoodEntry,
    MfpFoodEntryCopyWith<$R, MfpFoodEntry, MfpFoodEntry>
  >
  get entries;
  ListCopyWith<
    $R,
    MfpMealTotals,
    MfpMealTotalsCopyWith<$R, MfpMealTotals, MfpMealTotals>
  >
  get mealTotals;
  $R call({
    DateTime? date,
    List<MfpFoodEntry>? entries,
    List<MfpMealTotals>? mealTotals,
  });
  MfpDiaryDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpDiaryDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpDiaryDay, $Out>
    implements MfpDiaryDayCopyWith<$R, MfpDiaryDay, $Out> {
  _MfpDiaryDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpDiaryDay> $mapper =
      MfpDiaryDayMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MfpFoodEntry,
    MfpFoodEntryCopyWith<$R, MfpFoodEntry, MfpFoodEntry>
  >
  get entries => ListCopyWith(
    $value.entries,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(entries: v),
  );
  @override
  ListCopyWith<
    $R,
    MfpMealTotals,
    MfpMealTotalsCopyWith<$R, MfpMealTotals, MfpMealTotals>
  >
  get mealTotals => ListCopyWith(
    $value.mealTotals,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(mealTotals: v),
  );
  @override
  $R call({
    DateTime? date,
    List<MfpFoodEntry>? entries,
    List<MfpMealTotals>? mealTotals,
  }) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (entries != null) #entries: entries,
      if (mealTotals != null) #mealTotals: mealTotals,
    }),
  );
  @override
  MfpDiaryDay $make(CopyWithData data) => MfpDiaryDay(
    date: data.get(#date, or: $value.date),
    entries: data.get(#entries, or: $value.entries),
    mealTotals: data.get(#mealTotals, or: $value.mealTotals),
  );

  @override
  MfpDiaryDayCopyWith<$R2, MfpDiaryDay, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpDiaryDayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

