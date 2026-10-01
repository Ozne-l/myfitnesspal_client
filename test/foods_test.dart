import 'package:checks/checks.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _search = 'GET api.myfitnesspal.com /v2/search/nutrition';

void main() {
  test(
    'search asks for loggable foods only and drops other result kinds',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _search: (_) => jsonFixture('search.json'),
      });
      await fake.signIn();

      final [rice] = await fake.client.foods.search('riz', countryCode: 'fr');

      check(fake.requests.last.url.queryParametersAll).deepEquals({
        'q': ['riz'],
        'scope': ['all'],
        'max_items': ['25'],
        'country_code': ['FR'],
        'resource_type[]': ['foods'],
        'fields[]': [
          'id',
          'version',
          'description',
          'brand_name',
          'serving_sizes',
          'nutritional_contents',
        ],
      });
      check(rice)
        ..has((f) => f.version, 'version').equals('200000003')
        ..has((f) => f.verified, 'verified').equals(true)
        ..has((f) => f.nutrients?.energy?.kilocalories, 'kcal').equals(130);
      check(
        rice.servingSizes.map((s) => s.nutritionMultiplier),
      ).deepEquals([1, 1.58]);
    },
  );

  test('verified-only search narrows the scope', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _search: (_) => json({'items': <Object>[]}),
    });
    await fake.signIn();

    await fake.client.foods.search('riz', verifiedOnly: true, maxResults: 5);

    check(fake.requests.last.url.queryParameters)
      ..['scope'].equals('verified')
      ..['max_items'].equals('5')
      ..not((it) => it.containsKey('country_code'));
  });

  test('an unknown food id is null', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      'GET api.myfitnesspal.com /v2/foods': (_) => json({'items': <Object>[]}),
    });
    await fake.signIn();

    check(await fake.client.foods.byId('missing')).isNull();
    check(
      fake.requests.last.url.queryParameters,
    ).deepEquals({'ids': 'missing'});
  });
}
