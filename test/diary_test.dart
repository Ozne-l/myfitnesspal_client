import 'package:checks/checks.dart';
import 'package:myfitnesspal_client/myfitnesspal_client.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _diary = 'GET api.myfitnesspal.com /v2/diary';

void main() {
  test(
    'a diary day splits food entries from meal totals and skips the rest',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _diary: (_) => jsonFixture('diary.json'),
      });
      await fake.signIn();

      final day = await fake.client.diary.forDate(
        DateTime(2026, 10, 1, 23, 30),
      );

      check(
        fake.to('GET', 'api.myfitnesspal.com', '/v2/diary').single.url,
      ).has((u) => u.queryParametersAll, 'query').deepEquals({
        'entry_date': ['2026-10-01'],
        'types': ['food_entry,diary_meal'],
        'fields[]': ['all'],
        'fields': ['all'],
      });
      check(day.date).equals(DateTime.utc(2026, 10));
      final [oats, yoghurt] = day.entries;
      check(oats)
        ..has((e) => e.id, 'id').equals('3F2A6C1E-0B7D-4E5A-9C11-7D2B8E4F0A01')
        ..has((e) => e.date, 'date').equals(DateTime.utc(2026, 10))
        ..has((e) => e.mealName, 'mealName').equals('Breakfast')
        ..has((e) => e.servings, 'servings').equals(1.5)
        ..has((e) => e.food.version, 'version').equals('200000001')
        ..has((e) => e.food.brandName, 'brandName').isNull()
        ..has((e) => e.nutrients.netCarbs, 'netCarbs').equals(75)
        ..has((e) => e.nutrients.sodiumMilligrams, 'sodium').equals(3);
      check(yoghurt)
        ..has((e) => e.id, 'id').isNull()
        ..has((e) => e.servingSize.nutritionMultiplier, 'multiplier').isNull()
        ..has(
          (e) => e.nutrients.energy?.kilocalories,
          'kilocalories',
        ).isNotNull().isCloseTo(200, 1e-9);
      check(day.mealTotals.single)
        ..has((t) => t.mealName, 'mealName').equals('Breakfast')
        ..has((t) => t.nutrients.protein, 'protein').equals(20.1);
    },
  );

  test(
    'adding a food sends only the serving fields the diary accepts',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        'POST api.myfitnesspal.com /v2/diary': (_) => json({
          'items': [
            {'id': 'NEW-ENTRY', 'type': 'food_entry'},
          ],
        }, status: 201),
      });
      await fake.signIn();
      const food = MfpFood(
        id: '100000003',
        version: '200000003',
        description: 'Riz basmati, cuit',
        servingSizes: [
          MfpServingSize(value: 1, unit: 'tasse', nutritionMultiplier: 1.58),
        ],
      );

      final id = await fake.client.diary.addFood(
        date: DateTime(2026, 10),
        mealName: 'Lunch',
        food: food,
        servingSize: food.servingSizes.single,
        servings: 2,
      );

      check(id).equals('NEW-ENTRY');
      final request = fake.requests.last;
      check(request.headers['content-type']).isNotNull().startsWith(
        'application/json',
      );
      check(fake.bodyOf(request)).deepEquals({
        'items': [
          {
            'type': 'food_entry',
            'date': '2026-10-01',
            'meal_name': 'Lunch',
            'servings': 2.0,
            'food': {'id': '100000003', 'version': '200000003'},
            'serving_size': {
              'value': 1.0,
              'unit': 'tasse',
              'nutrition_multiplier': 1.58,
            },
          },
        ],
      });
    },
  );

  test('an entry is removed by its id', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      'DELETE api.myfitnesspal.com /v2/diary/ENTRY-1': (_) =>
          json(null, status: 204),
    });
    await fake.signIn();

    await fake.client.diary.remove('ENTRY-1');

    check(fake.requests.last.method).equals('DELETE');
  });

  test("meal names come from the signed-in user's diary preferences", () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      'GET api.myfitnesspal.com /v2/users/user-42': (_) => json({
        'item': {
          'id': 'user-42',
          'diary_preferences': {
            'meal_names': ['Petit-déjeuner', 'Déjeuner', 'Dîner', 'Collation'],
          },
        },
      }),
    });
    await fake.signIn();

    final names = await fake.client.diary.mealNames();

    check(
      names,
    ).deepEquals(['Petit-déjeuner', 'Déjeuner', 'Dîner', 'Collation']);
    check(fake.requests.last.url.queryParametersAll).deepEquals({
      'fields[]': ['diary_preferences'],
    });
  });

  test('a refused write surfaces the API error details', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      'POST api.myfitnesspal.com /v2/diary': (_) => json({
        'error': 'invalid_request',
        'error_description': 'Validation failed',
        'error_details': {'item_error': 'food version mismatch'},
      }, status: 400),
    });
    await fake.signIn();

    await check(
      fake.client.diary.addFood(
        date: DateTime(2026, 10),
        mealName: 'Lunch',
        food: const MfpFood(id: '1', version: 'old', description: 'Riz'),
        servingSize: const MfpServingSize(value: 100, unit: 'g'),
      ),
    ).throws<MfpApiException>(
      (e) => e
        ..has((e) => e.statusCode, 'statusCode').equals(400)
        ..has((e) => e.errors, 'errors').deepEquals([
          'invalid_request',
          'Validation failed',
          'item_error: food version mismatch',
        ]),
    );
  });
}
