// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'created_item.dart';

class CreatedItemMapper extends ClassMapperBase<CreatedItem> {
  CreatedItemMapper._();

  static CreatedItemMapper? _instance;
  static CreatedItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatedItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreatedItem';

  static String? _$id(CreatedItem v) => v.id;
  static const Field<CreatedItem, String> _f$id = Field('id', _$id, opt: true);

  @override
  final MappableFields<CreatedItem> fields = const {#id: _f$id};
  @override
  final bool ignoreNull = true;

  static CreatedItem _instantiate(DecodingData data) {
    return CreatedItem(id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatedItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatedItem>(map);
  }

  static CreatedItem fromJson(String json) {
    return ensureInitialized().decodeJson<CreatedItem>(json);
  }
}

mixin CreatedItemMappable {
  String toJson() {
    return CreatedItemMapper.ensureInitialized().encodeJson<CreatedItem>(
      this as CreatedItem,
    );
  }

  Map<String, dynamic> toMap() {
    return CreatedItemMapper.ensureInitialized().encodeMap<CreatedItem>(
      this as CreatedItem,
    );
  }

  CreatedItemCopyWith<CreatedItem, CreatedItem, CreatedItem> get copyWith =>
      _CreatedItemCopyWithImpl<CreatedItem, CreatedItem>(
        this as CreatedItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CreatedItemMapper.ensureInitialized().stringifyValue(
      this as CreatedItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return CreatedItemMapper.ensureInitialized().equalsValue(
      this as CreatedItem,
      other,
    );
  }

  @override
  int get hashCode {
    return CreatedItemMapper.ensureInitialized().hashValue(this as CreatedItem);
  }
}

extension CreatedItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatedItem, $Out> {
  CreatedItemCopyWith<$R, CreatedItem, $Out> get $asCreatedItem =>
      $base.as((v, t, t2) => _CreatedItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreatedItemCopyWith<$R, $In extends CreatedItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id});
  CreatedItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CreatedItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatedItem, $Out>
    implements CreatedItemCopyWith<$R, CreatedItem, $Out> {
  _CreatedItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatedItem> $mapper =
      CreatedItemMapper.ensureInitialized();
  @override
  $R call({Object? id = $none}) =>
      $apply(FieldCopyWithData({if (id != $none) #id: id}));
  @override
  CreatedItem $make(CopyWithData data) =>
      CreatedItem(id: data.get(#id, or: $value.id));

  @override
  CreatedItemCopyWith<$R2, CreatedItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CreatedItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

