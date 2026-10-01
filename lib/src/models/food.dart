import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/hooks.dart';
import 'package:myfitnesspal_client/src/models/nutrients.dart';
import 'package:myfitnesspal_client/src/models/serving_size.dart';

part 'food.mapper.dart';

@MappableClass()
class MfpFood with MfpFoodMappable {
  const MfpFood({
    required this.id,
    required this.version,
    required this.description,
    this.brandName,
    this.verified,
    this.isPublic,
    this.countryCode,
    this.servingSizes = const [],
    this.nutrients,
  });

  final String id;
  final String version;
  final String description;
  final String? brandName;
  final bool? verified;

  @MappableField(key: 'public')
  final bool? isPublic;

  final String? countryCode;

  @MappableField(hook: NullToEmptyListHook())
  final List<MfpServingSize> servingSizes;

  @MappableField(key: 'nutritional_contents')
  final MfpNutrients? nutrients;
}
