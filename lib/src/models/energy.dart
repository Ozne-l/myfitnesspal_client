import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/energy_unit.dart';

part 'energy.mapper.dart';

@MappableClass()
class MfpEnergy with MfpEnergyMappable {
  const MfpEnergy({required this.unit, required this.value});

  static const kilojoulesPerKilocalorie = 4.184;

  final MfpEnergyUnit unit;
  final double value;

  double? get kilocalories => switch (unit) {
    MfpEnergyUnit.calories => value,
    MfpEnergyUnit.kilojoules => value / kilojoulesPerKilocalorie,
    MfpEnergyUnit.unknown => null,
  };
}
