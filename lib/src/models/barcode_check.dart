import 'package:dart_mappable/dart_mappable.dart';
import 'package:myfitnesspal_client/src/models/barcode_format.dart';

part 'barcode_check.mapper.dart';

const _evenWeight = 3;
const _oddWeight = 1;
const _base = 10;
final _digits = RegExp(r'^\d+$');
final int _zero = '0'.codeUnitAt(0);

MfpBarcodeCheck checkBarcode(String barcode) {
  if (!_digits.hasMatch(barcode)) return MfpBarcodeNotDigits(barcode);
  final format = MfpBarcodeFormat.values
      .where((format) => format.length == barcode.length)
      .firstOrNull;
  if (format == null) return MfpBarcodeWrongLength(barcode);
  final expected = _checkDigit(barcode.substring(0, barcode.length - 1));
  final actual = barcode.codeUnitAt(barcode.length - 1) - _zero;
  return actual == expected
      ? MfpValidBarcode(barcode, format)
      : MfpBarcodeWrongCheckDigit(
          barcode,
          format,
          actual: actual,
          expected: expected,
        );
}

int _checkDigit(String body) {
  var sum = 0;
  for (var i = 0; i < body.length; i++) {
    final digit = body.codeUnitAt(body.length - 1 - i) - _zero;
    sum += digit * (i.isEven ? _evenWeight : _oddWeight);
  }
  return (_base - sum % _base) % _base;
}

@MappableClass(discriminatorKey: 'kind')
sealed class MfpBarcodeCheck with MfpBarcodeCheckMappable {
  const MfpBarcodeCheck(this.barcode);

  final String barcode;
}

@MappableClass()
final class MfpValidBarcode extends MfpBarcodeCheck
    with MfpValidBarcodeMappable {
  const MfpValidBarcode(super.barcode, this.format);

  final MfpBarcodeFormat format;
}

@MappableClass()
final class MfpBarcodeNotDigits extends MfpBarcodeCheck
    with MfpBarcodeNotDigitsMappable {
  const MfpBarcodeNotDigits(super.barcode);
}

@MappableClass()
final class MfpBarcodeWrongLength extends MfpBarcodeCheck
    with MfpBarcodeWrongLengthMappable {
  const MfpBarcodeWrongLength(super.barcode);
}

@MappableClass()
final class MfpBarcodeWrongCheckDigit extends MfpBarcodeCheck
    with MfpBarcodeWrongCheckDigitMappable {
  const MfpBarcodeWrongCheckDigit(
    super.barcode,
    this.format, {
    required this.actual,
    required this.expected,
  });

  final MfpBarcodeFormat format;
  final int actual;
  final int expected;
}
