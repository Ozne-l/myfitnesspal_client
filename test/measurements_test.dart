import 'package:checks/checks.dart';
import 'package:myfitnesspal_client/myfitnesspal_client.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _post = 'POST api.myfitnesspal.com /v2/measurements';
const _get = 'GET api.myfitnesspal.com /v2/measurements';

void main() {
  test(
    'logging a weight sends one kilogram item and decodes the reply',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _post: (_) => json({
          'items': [
            {
              'id': '123456789012345',
              'type': 'weight',
              'value': 68.9,
              'date': '2015-01-01',
              'unit': 'kilograms',
              'updated_at': '2026-11-22T10:15:30Z',
            },
          ],
        }, status: 201),
      });
      await fake.signIn();

      final created = await fake.client.measurements.logWeight(
        value: 68.9,
        unit: MfpWeightUnit.kilograms,
        date: DateTime(2015, 1, 1, 23, 30),
      );

      check(fake.bodyOf(fake.requests.last)).deepEquals({
        'items': [
          {
            'type': 'weight',
            'value': 68.9,
            'unit': 'kilograms',
            'date': '2015-01-01',
          },
        ],
      });
      check(created).isNotNull()
        ..has((m) => m.id, 'id').equals('123456789012345')
        ..has((m) => m.type, 'type').equals('weight')
        ..has((m) => m.value, 'value').equals(68.9)
        ..has((m) => m.unit, 'unit').equals('kilograms')
        ..has((m) => m.date, 'date').equals(DateTime.utc(2015))
        ..has(
          (m) => m.updatedAt,
          'updatedAt',
        ).equals(DateTime.utc(2026, 11, 22, 10, 15, 30));
    },
  );

  test('a day without weight reads as an empty list', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _get: (_) => json({'items': <Object>[]}),
    });
    await fake.signIn();

    final items = await fake.client.measurements.forDate(DateTime(2026, 11, 2));

    check(items).isEmpty();
    check(fake.requests.last.url.queryParametersAll).deepEquals({
      'entry_date': ['2026-11-02'],
      'types': ['weight'],
    });
  });

  test(
    'a weight written by the website reads with its capitalised type',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _get: (_) => json({
          'items': [
            {
              'id': '987654321098765',
              'type': 'Weight',
              'value': 150,
              'date': '2026-11-22',
              'unit': 'pounds',
            },
          ],
        }),
      });
      await fake.signIn();

      final [weight] = await fake.client.measurements.forDate(
        DateTime(2026, 11, 22),
      );

      check(weight)
        ..has((m) => m.type, 'type').equals('Weight')
        ..has((m) => m.value, 'value').equals(150)
        ..has((m) => m.unit, 'unit').equals('pounds')
        ..has((m) => m.updatedAt, 'updatedAt').isNull();
    },
  );

  test('a measurement is removed by its id', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      'DELETE api.myfitnesspal.com /v2/measurements/123456789012345': (_) =>
          json(null, status: 204),
    });
    await fake.signIn();

    await fake.client.measurements.remove('123456789012345');

    check(fake.requests.last.method).equals('DELETE');
  });

  test('a refused weight surfaces the API error', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _post: (_) => json({
        'error': 'invalid_request',
        'error_description': 'Validation failed',
      }, status: 400),
    });
    await fake.signIn();

    await check(
      fake.client.measurements.logWeight(
        value: 68.9,
        unit: MfpWeightUnit.kilograms,
        date: DateTime(2026, 11, 22),
      ),
    ).throws<MfpApiException>(
      (e) => e.has((e) => e.statusCode, 'statusCode').equals(400),
    );
  });
}
