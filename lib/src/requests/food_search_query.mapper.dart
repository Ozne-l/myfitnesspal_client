// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_search_query.dart';

class FoodSearchQueryMapper extends ClassMapperBase<FoodSearchQuery> {
  FoodSearchQueryMapper._();

  static FoodSearchQueryMapper? _instance;
  static FoodSearchQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodSearchQueryMapper._());
      SearchScopeMapper.ensureInitialized();
      SearchResourceTypeMapper.ensureInitialized();
      FoodFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodSearchQuery';

  static String _$q(FoodSearchQuery v) => v.q;
  static const Field<FoodSearchQuery, String> _f$q = Field('q', _$q);
  static SearchScope _$scope(FoodSearchQuery v) => v.scope;
  static const Field<FoodSearchQuery, SearchScope> _f$scope = Field(
    'scope',
    _$scope,
  );
  static int _$maxItems(FoodSearchQuery v) => v.maxItems;
  static const Field<FoodSearchQuery, int> _f$maxItems = Field(
    'maxItems',
    _$maxItems,
    key: r'max_items',
  );
  static String? _$countryCode(FoodSearchQuery v) => v.countryCode;
  static const Field<FoodSearchQuery, String> _f$countryCode = Field(
    'countryCode',
    _$countryCode,
    key: r'country_code',
    opt: true,
  );
  static List<SearchResourceType> _$resourceTypes(FoodSearchQuery v) =>
      v.resourceTypes;
  static const Field<FoodSearchQuery, List<SearchResourceType>>
  _f$resourceTypes = Field(
    'resourceTypes',
    _$resourceTypes,
    key: r'resource_type[]',
    opt: true,
    def: const [SearchResourceType.foods],
  );
  static List<FoodField> _$fields(FoodSearchQuery v) => v.fields;
  static const Field<FoodSearchQuery, List<FoodField>> _f$fields = Field(
    'fields',
    _$fields,
    key: r'fields[]',
    opt: true,
    def: FoodField.values,
  );

  @override
  final MappableFields<FoodSearchQuery> fields = const {
    #q: _f$q,
    #scope: _f$scope,
    #maxItems: _f$maxItems,
    #countryCode: _f$countryCode,
    #resourceTypes: _f$resourceTypes,
    #fields: _f$fields,
  };
  @override
  final bool ignoreNull = true;

  static FoodSearchQuery _instantiate(DecodingData data) {
    return FoodSearchQuery(
      q: data.dec(_f$q),
      scope: data.dec(_f$scope),
      maxItems: data.dec(_f$maxItems),
      countryCode: data.dec(_f$countryCode),
      resourceTypes: data.dec(_f$resourceTypes),
      fields: data.dec(_f$fields),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FoodSearchQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodSearchQuery>(map);
  }

  static FoodSearchQuery fromJson(String json) {
    return ensureInitialized().decodeJson<FoodSearchQuery>(json);
  }
}

mixin FoodSearchQueryMappable {
  String toJson() {
    return FoodSearchQueryMapper.ensureInitialized()
        .encodeJson<FoodSearchQuery>(this as FoodSearchQuery);
  }

  Map<String, dynamic> toMap() {
    return FoodSearchQueryMapper.ensureInitialized().encodeMap<FoodSearchQuery>(
      this as FoodSearchQuery,
    );
  }

  FoodSearchQueryCopyWith<FoodSearchQuery, FoodSearchQuery, FoodSearchQuery>
  get copyWith =>
      _FoodSearchQueryCopyWithImpl<FoodSearchQuery, FoodSearchQuery>(
        this as FoodSearchQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodSearchQueryMapper.ensureInitialized().stringifyValue(
      this as FoodSearchQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodSearchQueryMapper.ensureInitialized().equalsValue(
      this as FoodSearchQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodSearchQueryMapper.ensureInitialized().hashValue(
      this as FoodSearchQuery,
    );
  }
}

extension FoodSearchQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodSearchQuery, $Out> {
  FoodSearchQueryCopyWith<$R, FoodSearchQuery, $Out> get $asFoodSearchQuery =>
      $base.as((v, t, t2) => _FoodSearchQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodSearchQueryCopyWith<$R, $In extends FoodSearchQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    SearchResourceType,
    ObjectCopyWith<$R, SearchResourceType, SearchResourceType>
  >
  get resourceTypes;
  ListCopyWith<$R, FoodField, ObjectCopyWith<$R, FoodField, FoodField>>
  get fields;
  $R call({
    String? q,
    SearchScope? scope,
    int? maxItems,
    String? countryCode,
    List<SearchResourceType>? resourceTypes,
    List<FoodField>? fields,
  });
  FoodSearchQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FoodSearchQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodSearchQuery, $Out>
    implements FoodSearchQueryCopyWith<$R, FoodSearchQuery, $Out> {
  _FoodSearchQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodSearchQuery> $mapper =
      FoodSearchQueryMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    SearchResourceType,
    ObjectCopyWith<$R, SearchResourceType, SearchResourceType>
  >
  get resourceTypes => ListCopyWith(
    $value.resourceTypes,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(resourceTypes: v),
  );
  @override
  ListCopyWith<$R, FoodField, ObjectCopyWith<$R, FoodField, FoodField>>
  get fields => ListCopyWith(
    $value.fields,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(fields: v),
  );
  @override
  $R call({
    String? q,
    SearchScope? scope,
    int? maxItems,
    Object? countryCode = $none,
    List<SearchResourceType>? resourceTypes,
    List<FoodField>? fields,
  }) => $apply(
    FieldCopyWithData({
      if (q != null) #q: q,
      if (scope != null) #scope: scope,
      if (maxItems != null) #maxItems: maxItems,
      if (countryCode != $none) #countryCode: countryCode,
      if (resourceTypes != null) #resourceTypes: resourceTypes,
      if (fields != null) #fields: fields,
    }),
  );
  @override
  FoodSearchQuery $make(CopyWithData data) => FoodSearchQuery(
    q: data.get(#q, or: $value.q),
    scope: data.get(#scope, or: $value.scope),
    maxItems: data.get(#maxItems, or: $value.maxItems),
    countryCode: data.get(#countryCode, or: $value.countryCode),
    resourceTypes: data.get(#resourceTypes, or: $value.resourceTypes),
    fields: data.get(#fields, or: $value.fields),
  );

  @override
  FoodSearchQueryCopyWith<$R2, FoodSearchQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodSearchQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

