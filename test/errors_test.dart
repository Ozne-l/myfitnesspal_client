import 'package:checks/checks.dart';
import 'package:http/http.dart' as http;
import 'package:myfitnesspal_client/myfitnesspal_client.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _foods = 'GET api.myfitnesspal.com /v2/foods';

http.Response _offline(http.Request request) =>
    throw http.ClientException('Connection failed', request.url);

void main() {
  test('no network while signing in is a network error, '
      'not an expired session', () async {
    final fake = FakeMfp({authToken: _offline});

    await check(fake.signIn()).throws<MfpNetworkException>(
      (e) => e
        ..has((e) => e.method, 'method').equals('GET')
        ..has((e) => e.uri.path, 'path').equals('/user/auth_token')
        ..has((e) => e.errors, 'errors').deepEquals(['Connection failed']),
    );
  });

  test('no network on an API call is a network error and keeps the '
      'session', () async {
    final fake = FakeMfp({authToken: (_) => token(), _foods: _offline});
    await fake.signIn();

    await check(fake.client.foods.byId('1')).throws<MfpNetworkException>(
      (e) => e.has((e) => e.uri.host, 'host').equals('api.myfitnesspal.com'),
    );
    check(await fake.client.isSignedIn).isTrue();
  });

  test('a response that is not JSON is unexpected', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _foods: (_) => http.Response(
        '<html>maintenance</html>',
        200,
        headers: {'content-type': 'text/html'},
      ),
    });
    await fake.signIn();

    await check(
      fake.client.foods.byId('1'),
    ).throws<MfpUnexpectedResponseException>(
      (e) => e
        ..has((e) => e.method, 'method').equals('GET')
        ..has((e) => e.uri.path, 'path').equals('/v2/foods')
        ..has((e) => e.statusCode, 'status').equals(200)
        ..has((e) => e.errors, 'errors').isNotEmpty(),
    );
  });

  test('a JSON response missing a required field is unexpected', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _foods: (_) => json({
        'items': [
          {'description': 'no id'},
        ],
      }),
    });
    await fake.signIn();

    await check(
      fake.client.foods.byId('1'),
    ).throws<MfpUnexpectedResponseException>();
  });

  test('a token response without a token is unexpected, '
      'not an expired session', () async {
    final fake = FakeMfp({
      authToken: (_) => json({'token_type': 'Bearer'}),
    });

    await check(fake.signIn()).throws<MfpUnexpectedResponseException>(
      (e) => e.has((e) => e.uri.path, 'path').equals('/user/auth_token'),
    );
  });
}
