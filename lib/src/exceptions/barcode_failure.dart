import 'package:dart_mappable/dart_mappable.dart';

part 'barcode_failure.mapper.dart';

@MappableEnum()
enum MfpBarcodeFailure { invalidBarcode, rejected }
