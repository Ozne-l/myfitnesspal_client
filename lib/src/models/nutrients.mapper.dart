// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nutrients.dart';

class MfpNutrientsMapper extends ClassMapperBase<MfpNutrients> {
  MfpNutrientsMapper._();

  static MfpNutrientsMapper? _instance;
  static MfpNutrientsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MfpNutrientsMapper._());
      MfpEnergyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MfpNutrients';

  static MfpEnergy? _$energy(MfpNutrients v) => v.energy;
  static const Field<MfpNutrients, MfpEnergy> _f$energy = Field(
    'energy',
    _$energy,
    opt: true,
  );
  static double? _$protein(MfpNutrients v) => v.protein;
  static const Field<MfpNutrients, double> _f$protein = Field(
    'protein',
    _$protein,
    opt: true,
  );
  static double? _$carbohydrates(MfpNutrients v) => v.carbohydrates;
  static const Field<MfpNutrients, double> _f$carbohydrates = Field(
    'carbohydrates',
    _$carbohydrates,
    opt: true,
  );
  static double? _$netCarbs(MfpNutrients v) => v.netCarbs;
  static const Field<MfpNutrients, double> _f$netCarbs = Field(
    'netCarbs',
    _$netCarbs,
    key: r'net_carbs',
    opt: true,
  );
  static double? _$fiber(MfpNutrients v) => v.fiber;
  static const Field<MfpNutrients, double> _f$fiber = Field(
    'fiber',
    _$fiber,
    opt: true,
  );
  static double? _$sugar(MfpNutrients v) => v.sugar;
  static const Field<MfpNutrients, double> _f$sugar = Field(
    'sugar',
    _$sugar,
    opt: true,
  );
  static double? _$addedSugars(MfpNutrients v) => v.addedSugars;
  static const Field<MfpNutrients, double> _f$addedSugars = Field(
    'addedSugars',
    _$addedSugars,
    key: r'added_sugars',
    opt: true,
  );
  static double? _$sugarAlcohols(MfpNutrients v) => v.sugarAlcohols;
  static const Field<MfpNutrients, double> _f$sugarAlcohols = Field(
    'sugarAlcohols',
    _$sugarAlcohols,
    key: r'sugar_alcohols',
    opt: true,
  );
  static double? _$fat(MfpNutrients v) => v.fat;
  static const Field<MfpNutrients, double> _f$fat = Field(
    'fat',
    _$fat,
    opt: true,
  );
  static double? _$saturatedFat(MfpNutrients v) => v.saturatedFat;
  static const Field<MfpNutrients, double> _f$saturatedFat = Field(
    'saturatedFat',
    _$saturatedFat,
    key: r'saturated_fat',
    opt: true,
  );
  static double? _$monounsaturatedFat(MfpNutrients v) => v.monounsaturatedFat;
  static const Field<MfpNutrients, double> _f$monounsaturatedFat = Field(
    'monounsaturatedFat',
    _$monounsaturatedFat,
    key: r'monounsaturated_fat',
    opt: true,
  );
  static double? _$polyunsaturatedFat(MfpNutrients v) => v.polyunsaturatedFat;
  static const Field<MfpNutrients, double> _f$polyunsaturatedFat = Field(
    'polyunsaturatedFat',
    _$polyunsaturatedFat,
    key: r'polyunsaturated_fat',
    opt: true,
  );
  static double? _$transFat(MfpNutrients v) => v.transFat;
  static const Field<MfpNutrients, double> _f$transFat = Field(
    'transFat',
    _$transFat,
    key: r'trans_fat',
    opt: true,
  );
  static double? _$cholesterolMilligrams(MfpNutrients v) =>
      v.cholesterolMilligrams;
  static const Field<MfpNutrients, double> _f$cholesterolMilligrams = Field(
    'cholesterolMilligrams',
    _$cholesterolMilligrams,
    key: r'cholesterol',
    opt: true,
  );
  static double? _$sodiumMilligrams(MfpNutrients v) => v.sodiumMilligrams;
  static const Field<MfpNutrients, double> _f$sodiumMilligrams = Field(
    'sodiumMilligrams',
    _$sodiumMilligrams,
    key: r'sodium',
    opt: true,
  );
  static double? _$potassiumMilligrams(MfpNutrients v) => v.potassiumMilligrams;
  static const Field<MfpNutrients, double> _f$potassiumMilligrams = Field(
    'potassiumMilligrams',
    _$potassiumMilligrams,
    key: r'potassium',
    opt: true,
  );
  static double? _$vitaminA(MfpNutrients v) => v.vitaminA;
  static const Field<MfpNutrients, double> _f$vitaminA = Field(
    'vitaminA',
    _$vitaminA,
    key: r'vitamin_a',
    opt: true,
  );
  static double? _$vitaminC(MfpNutrients v) => v.vitaminC;
  static const Field<MfpNutrients, double> _f$vitaminC = Field(
    'vitaminC',
    _$vitaminC,
    key: r'vitamin_c',
    opt: true,
  );
  static double? _$vitaminD(MfpNutrients v) => v.vitaminD;
  static const Field<MfpNutrients, double> _f$vitaminD = Field(
    'vitaminD',
    _$vitaminD,
    key: r'vitamin_d',
    opt: true,
  );
  static double? _$calcium(MfpNutrients v) => v.calcium;
  static const Field<MfpNutrients, double> _f$calcium = Field(
    'calcium',
    _$calcium,
    opt: true,
  );
  static double? _$iron(MfpNutrients v) => v.iron;
  static const Field<MfpNutrients, double> _f$iron = Field(
    'iron',
    _$iron,
    opt: true,
  );

  @override
  final MappableFields<MfpNutrients> fields = const {
    #energy: _f$energy,
    #protein: _f$protein,
    #carbohydrates: _f$carbohydrates,
    #netCarbs: _f$netCarbs,
    #fiber: _f$fiber,
    #sugar: _f$sugar,
    #addedSugars: _f$addedSugars,
    #sugarAlcohols: _f$sugarAlcohols,
    #fat: _f$fat,
    #saturatedFat: _f$saturatedFat,
    #monounsaturatedFat: _f$monounsaturatedFat,
    #polyunsaturatedFat: _f$polyunsaturatedFat,
    #transFat: _f$transFat,
    #cholesterolMilligrams: _f$cholesterolMilligrams,
    #sodiumMilligrams: _f$sodiumMilligrams,
    #potassiumMilligrams: _f$potassiumMilligrams,
    #vitaminA: _f$vitaminA,
    #vitaminC: _f$vitaminC,
    #vitaminD: _f$vitaminD,
    #calcium: _f$calcium,
    #iron: _f$iron,
  };
  @override
  final bool ignoreNull = true;

  static MfpNutrients _instantiate(DecodingData data) {
    return MfpNutrients(
      energy: data.dec(_f$energy),
      protein: data.dec(_f$protein),
      carbohydrates: data.dec(_f$carbohydrates),
      netCarbs: data.dec(_f$netCarbs),
      fiber: data.dec(_f$fiber),
      sugar: data.dec(_f$sugar),
      addedSugars: data.dec(_f$addedSugars),
      sugarAlcohols: data.dec(_f$sugarAlcohols),
      fat: data.dec(_f$fat),
      saturatedFat: data.dec(_f$saturatedFat),
      monounsaturatedFat: data.dec(_f$monounsaturatedFat),
      polyunsaturatedFat: data.dec(_f$polyunsaturatedFat),
      transFat: data.dec(_f$transFat),
      cholesterolMilligrams: data.dec(_f$cholesterolMilligrams),
      sodiumMilligrams: data.dec(_f$sodiumMilligrams),
      potassiumMilligrams: data.dec(_f$potassiumMilligrams),
      vitaminA: data.dec(_f$vitaminA),
      vitaminC: data.dec(_f$vitaminC),
      vitaminD: data.dec(_f$vitaminD),
      calcium: data.dec(_f$calcium),
      iron: data.dec(_f$iron),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MfpNutrients fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MfpNutrients>(map);
  }

  static MfpNutrients fromJson(String json) {
    return ensureInitialized().decodeJson<MfpNutrients>(json);
  }
}

mixin MfpNutrientsMappable {
  String toJson() {
    return MfpNutrientsMapper.ensureInitialized().encodeJson<MfpNutrients>(
      this as MfpNutrients,
    );
  }

  Map<String, dynamic> toMap() {
    return MfpNutrientsMapper.ensureInitialized().encodeMap<MfpNutrients>(
      this as MfpNutrients,
    );
  }

  MfpNutrientsCopyWith<MfpNutrients, MfpNutrients, MfpNutrients> get copyWith =>
      _MfpNutrientsCopyWithImpl<MfpNutrients, MfpNutrients>(
        this as MfpNutrients,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MfpNutrientsMapper.ensureInitialized().stringifyValue(
      this as MfpNutrients,
    );
  }

  @override
  bool operator ==(Object other) {
    return MfpNutrientsMapper.ensureInitialized().equalsValue(
      this as MfpNutrients,
      other,
    );
  }

  @override
  int get hashCode {
    return MfpNutrientsMapper.ensureInitialized().hashValue(
      this as MfpNutrients,
    );
  }
}

extension MfpNutrientsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MfpNutrients, $Out> {
  MfpNutrientsCopyWith<$R, MfpNutrients, $Out> get $asMfpNutrients =>
      $base.as((v, t, t2) => _MfpNutrientsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MfpNutrientsCopyWith<$R, $In extends MfpNutrients, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MfpEnergyCopyWith<$R, MfpEnergy, MfpEnergy>? get energy;
  $R call({
    MfpEnergy? energy,
    double? protein,
    double? carbohydrates,
    double? netCarbs,
    double? fiber,
    double? sugar,
    double? addedSugars,
    double? sugarAlcohols,
    double? fat,
    double? saturatedFat,
    double? monounsaturatedFat,
    double? polyunsaturatedFat,
    double? transFat,
    double? cholesterolMilligrams,
    double? sodiumMilligrams,
    double? potassiumMilligrams,
    double? vitaminA,
    double? vitaminC,
    double? vitaminD,
    double? calcium,
    double? iron,
  });
  MfpNutrientsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MfpNutrientsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MfpNutrients, $Out>
    implements MfpNutrientsCopyWith<$R, MfpNutrients, $Out> {
  _MfpNutrientsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MfpNutrients> $mapper =
      MfpNutrientsMapper.ensureInitialized();
  @override
  MfpEnergyCopyWith<$R, MfpEnergy, MfpEnergy>? get energy =>
      $value.energy?.copyWith.$chain((v) => call(energy: v));
  @override
  $R call({
    Object? energy = $none,
    Object? protein = $none,
    Object? carbohydrates = $none,
    Object? netCarbs = $none,
    Object? fiber = $none,
    Object? sugar = $none,
    Object? addedSugars = $none,
    Object? sugarAlcohols = $none,
    Object? fat = $none,
    Object? saturatedFat = $none,
    Object? monounsaturatedFat = $none,
    Object? polyunsaturatedFat = $none,
    Object? transFat = $none,
    Object? cholesterolMilligrams = $none,
    Object? sodiumMilligrams = $none,
    Object? potassiumMilligrams = $none,
    Object? vitaminA = $none,
    Object? vitaminC = $none,
    Object? vitaminD = $none,
    Object? calcium = $none,
    Object? iron = $none,
  }) => $apply(
    FieldCopyWithData({
      if (energy != $none) #energy: energy,
      if (protein != $none) #protein: protein,
      if (carbohydrates != $none) #carbohydrates: carbohydrates,
      if (netCarbs != $none) #netCarbs: netCarbs,
      if (fiber != $none) #fiber: fiber,
      if (sugar != $none) #sugar: sugar,
      if (addedSugars != $none) #addedSugars: addedSugars,
      if (sugarAlcohols != $none) #sugarAlcohols: sugarAlcohols,
      if (fat != $none) #fat: fat,
      if (saturatedFat != $none) #saturatedFat: saturatedFat,
      if (monounsaturatedFat != $none) #monounsaturatedFat: monounsaturatedFat,
      if (polyunsaturatedFat != $none) #polyunsaturatedFat: polyunsaturatedFat,
      if (transFat != $none) #transFat: transFat,
      if (cholesterolMilligrams != $none)
        #cholesterolMilligrams: cholesterolMilligrams,
      if (sodiumMilligrams != $none) #sodiumMilligrams: sodiumMilligrams,
      if (potassiumMilligrams != $none)
        #potassiumMilligrams: potassiumMilligrams,
      if (vitaminA != $none) #vitaminA: vitaminA,
      if (vitaminC != $none) #vitaminC: vitaminC,
      if (vitaminD != $none) #vitaminD: vitaminD,
      if (calcium != $none) #calcium: calcium,
      if (iron != $none) #iron: iron,
    }),
  );
  @override
  MfpNutrients $make(CopyWithData data) => MfpNutrients(
    energy: data.get(#energy, or: $value.energy),
    protein: data.get(#protein, or: $value.protein),
    carbohydrates: data.get(#carbohydrates, or: $value.carbohydrates),
    netCarbs: data.get(#netCarbs, or: $value.netCarbs),
    fiber: data.get(#fiber, or: $value.fiber),
    sugar: data.get(#sugar, or: $value.sugar),
    addedSugars: data.get(#addedSugars, or: $value.addedSugars),
    sugarAlcohols: data.get(#sugarAlcohols, or: $value.sugarAlcohols),
    fat: data.get(#fat, or: $value.fat),
    saturatedFat: data.get(#saturatedFat, or: $value.saturatedFat),
    monounsaturatedFat: data.get(
      #monounsaturatedFat,
      or: $value.monounsaturatedFat,
    ),
    polyunsaturatedFat: data.get(
      #polyunsaturatedFat,
      or: $value.polyunsaturatedFat,
    ),
    transFat: data.get(#transFat, or: $value.transFat),
    cholesterolMilligrams: data.get(
      #cholesterolMilligrams,
      or: $value.cholesterolMilligrams,
    ),
    sodiumMilligrams: data.get(#sodiumMilligrams, or: $value.sodiumMilligrams),
    potassiumMilligrams: data.get(
      #potassiumMilligrams,
      or: $value.potassiumMilligrams,
    ),
    vitaminA: data.get(#vitaminA, or: $value.vitaminA),
    vitaminC: data.get(#vitaminC, or: $value.vitaminC),
    vitaminD: data.get(#vitaminD, or: $value.vitaminD),
    calcium: data.get(#calcium, or: $value.calcium),
    iron: data.get(#iron, or: $value.iron),
  );

  @override
  MfpNutrientsCopyWith<$R2, MfpNutrients, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MfpNutrientsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

