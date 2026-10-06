import 'dart:io';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:http/http.dart' as http;
import 'package:myfitnesspal_client/myfitnesspal_client.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _sync = 'POST sync.myfitnesspal.com /iphone_api/synchronize';
const _foods = 'GET api.myfitnesspal.com /v2/foods';
const _barcode = '5407008821708';

Uint8List _fixture(String name) =>
    File('test/fixtures/$name').readAsBytesSync();

void main() {
  test('a barcode is looked up without the session, as the Android app does, '
      'then resolved to a /v2 food', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binaryFixture('barcode_found.bin'),
      _foods: (_) => jsonFixture('barcode_food.json'),
    });
    await fake.signIn();

    final result = await fake.client.foods.byBarcode(_barcode);

    check(result).isA<MfpBarcodeFound>().has((r) => r.food, 'food')
      ..has((f) => f.id, 'id').equals('100000000000001')
      ..has((f) => f.description, 'description').equals('Complement mineral')
      ..has((f) => f.servingSizes.length, 'serving sizes').equals(3);
    final [lookup] = fake
        .to('POST', 'sync.myfitnesspal.com', '/iphone_api/synchronize')
        .toList();
    check(lookup.url.queryParameters).deepEquals({'lang': 'fr-FR'});
    check(lookup.headers)
      ..not((it) => it.containsKey('authorization'))
      ..['mfp-client-id'].equals('mfp-main-js');
    final deviceId = lookup.headers['device_id'] ?? '';
    check(lookup.headers['mfp-device-id']).equals(deviceId);
    final data = syncDataOf(lookup);
    check(_hex(data.sublist(0, 32))).equals(
      '04d300000032000100640'
      '02d0000c9350000000000000001000000020011'
      '0000',
    );
    check(_uuid(data.sublist(32, 48))).equals(deviceId);
    check(_hex(data.sublist(48))).equals(
      '0000'
      '04d3000000190001006d000d'
      '${_hex(_barcode.codeUnits)}',
    );
    check(
      fake.requests.last.url.queryParameters,
    ).deepEquals({'ids': '100000000000001'});
  });

  test('an edited food is fetched by its original id, '
      'the scanned id being its version', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binaryFixture('barcode_found_edited.bin'),
      _foods: (_) => jsonFixture('barcode_food_edited.json'),
    });
    await fake.signIn();

    final result = await fake.client.foods.byBarcode('3168930003632');

    check(
      fake.requests.last.url.queryParameters,
    ).deepEquals({'ids': '200000000000001'});
    check(result).isA<MfpBarcodeFound>().has((r) => r.food, 'food')
      ..has((f) => f.id, 'id').equals('200000000000001')
      ..has((f) => f.version, 'version').equals('200000000000002');
  });

  test('a barcode MyFitnessPal does not know is unknown, '
      'without asking /v2/foods', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binaryFixture('barcode_unknown.bin'),
    });
    await fake.signIn();

    final result = await fake.client.foods.byBarcode('3760999999996');

    check(result)
        .isA<MfpBarcodeUnknown>()
        .has((r) => r.barcode, 'barcode')
        .equals('3760999999996');
  });

  test('a scanned food missing from /v2/foods keeps its name and brand '
      'for a text search', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binaryFixture('barcode_found.bin'),
      _foods: (_) => json({'items': <Object>[]}),
    });
    await fake.signIn();

    final result = await fake.client.foods.byBarcode(_barcode);

    check(result).isA<MfpBarcodeUnresolved>()
      ..has((r) => r.foodId, 'food id').equals('100000000000001')
      ..has((r) => r.description, 'description').equals('Complement mineral')
      ..has((r) => r.brandName, 'brand').equals('Marque Exemple');
  });

  test('a malformed barcode is refused before any request', () async {
    final fake = FakeMfp({authToken: (_) => token()});
    await fake.signIn();
    fake.requests.clear();

    for (final barcode in ['', '54070088', '540700882170X', '5407008821709']) {
      await check(
        fake.client.foods.byBarcode(barcode),
      ).throws<MfpBarcodeException>(
        (e) => e
            .has((e) => e.failure, 'failure')
            .equals(MfpBarcodeFailure.invalidBarcode),
      );
    }
    check(fake.requests).isEmpty();
  });

  test('checkBarcode tells what is wrong while the code is typed', () {
    check(checkBarcode('3275760750398'))
        .isA<MfpValidBarcode>()
        .has(
          (c) => c.format,
          'format',
        )
        .equals(MfpBarcodeFormat.ean13);
    check(checkBarcode('036000291452'))
        .isA<MfpValidBarcode>()
        .has(
          (c) => c.format,
          'format',
        )
        .equals(MfpBarcodeFormat.upcA);
    check(checkBarcode('3275760750399')).isA<MfpBarcodeWrongCheckDigit>()
      ..has((c) => c.format, 'format').equals(MfpBarcodeFormat.ean13)
      ..has((c) => c.actual, 'actual').equals(9)
      ..has((c) => c.expected, 'expected').equals(8);
    check(checkBarcode('327576075')).isA<MfpBarcodeWrongLength>();
    check(checkBarcode('')).isA<MfpBarcodeNotDigits>();
    check(checkBarcode('32757607503 8')).isA<MfpBarcodeNotDigits>();
  });

  test(
    'UPC-A and EAN-8 codes with a valid check digit are looked up',
    () async {
      for (final barcode in ['036000291452', '96385074']) {
        final fake = FakeMfp({
          authToken: (_) => token(),
          _sync: (_) => binaryFixture('barcode_unknown.bin'),
        });
        await fake.signIn();

        check(
          await fake.client.foods.byBarcode(barcode),
        ).isA<MfpBarcodeUnknown>();
      }
    },
  );

  test('a reply with a failure status is a rejected lookup', () async {
    final rejected = _fixture('barcode_unknown.bin')..[18] = 0;
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binary(rejected),
    });
    await fake.signIn();

    await check(
      fake.client.foods.byBarcode(_barcode),
    ).throws<MfpBarcodeException>(
      (e) =>
          e.has((e) => e.failure, 'failure').equals(MfpBarcodeFailure.rejected),
    );
  });

  test('a reply to another request is refused', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => binaryFixture('barcode_unknown.bin'),
    });
    await fake.signIn();
    await fake.client.foods.byBarcode(_barcode);

    await check(
      fake.client.foods.byBarcode(_barcode),
    ).throws<MfpUnexpectedResponseException>();
  });

  test('a truncated or non-binary sync response is unexpected', () async {
    final found = _fixture('barcode_found.bin');
    for (final body in [
      found.sublist(0, found.length - 10),
      'Service Unavailable'.codeUnits,
      <int>[],
    ]) {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _sync: (_) => binary(body),
      });
      await fake.signIn();

      await check(
        fake.client.foods.byBarcode(_barcode),
      ).throws<MfpUnexpectedResponseException>(
        (e) => e
          ..has((e) => e.method, 'method').equals('POST')
          ..has((e) => e.uri.host, 'host').equals('sync.myfitnesspal.com')
          ..has((e) => e.statusCode, 'status').equals(200),
      );
    }
  });

  test('a sync error status is an API error', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (_) => http.Response('busy', 503),
    });
    await fake.signIn();

    await check(fake.client.foods.byBarcode(_barcode)).throws<MfpApiException>(
      (e) => e.has((e) => e.statusCode, 'status').equals(503),
    );
  });

  test('a lost connection during the lookup is a network error', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _sync: (request) => throw http.ClientException('offline', request.url),
    });
    await fake.signIn();

    await check(
      fake.client.foods.byBarcode(_barcode),
    ).throws<MfpNetworkException>(
      (e) => e
        ..has((e) => e.uri.host, 'host').equals('sync.myfitnesspal.com')
        ..has((e) => e.errors, 'errors').deepEquals(['offline']),
    );
  });
}

String _hex(List<int> bytes) =>
    [for (final b in bytes) b.toRadixString(16).padLeft(2, '0')].join();

String _uuid(List<int> bytes) {
  final hex = _hex(bytes);
  return '${hex.substring(0, 8)}-${hex.substring(8, 12)}-'
      '${hex.substring(12, 16)}-${hex.substring(16, 20)}-${hex.substring(20)}';
}
