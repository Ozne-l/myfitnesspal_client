import 'package:dart_mappable/dart_mappable.dart';

part 'energy_unit.mapper.dart';

@MappableEnum(defaultValue: MfpEnergyUnit.unknown)
enum MfpEnergyUnit { calories, kilojoules, unknown }
