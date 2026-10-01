import 'dart:io';

import 'package:checks/checks.dart';
import 'package:http/http.dart' as http;
import 'package:myfitnesspal_client/myfitnesspal_client.dart';
import 'package:test/test.dart';

import 'support/fake_mfp.dart';

const _foods = 'GET api.myfitnesspal.com /v2/foods';

http.Response _loginPage({int status = 200}) => http.Response(
  '<html><body>Log in</body></html>',
  status,
  headers: {'content-type': 'text/html; charset=utf-8'},
);

void main() {
  test(
    'a browser cookie export keeps only the cookies the website receives',
    () {
      final cookies = MfpSessionCookies.fromNetscapeFile(
        File('test/fixtures/browser_export.txt').readAsStringSync(),
      );

      check(cookies.values).deepEquals({
        'mfp_locale': 'fr',
        '__Secure-next-auth.session-token': 'fake.session=value',
      });
      check(cookies.hasSession).isTrue();
    },
  );

  test('a copied Cookie header keeps values that contain "="', () {
    final cookies = MfpSessionCookies.fromHeader(
      'mfp_locale=fr; _mfp_session=abc==; broken',
    );

    check(cookies.values).deepEquals({
      'mfp_locale': 'fr',
      '_mfp_session': 'abc==',
    });
    check(cookies.header).equals('mfp_locale=fr; _mfp_session=abc==');
  });

  test(
    'signing in trades the cookies for an API token that API calls carry',
    () async {
      final fake = FakeMfp({
        authToken: (_) => token(),
        _foods: (_) => json({'items': <Object>[]}),
      });

      await fake.signIn();
      await fake.client.foods.byId('1');

      final exchange = fake.to(
        'GET',
        'www.myfitnesspal.com',
        '/user/auth_token',
      );
      check(exchange.single)
        ..has(
          (r) => r.headers['cookie'],
          'cookie',
        ).equals(sessionCookies.header)
        ..has((r) => r.url.queryParameters, 'query').deepEquals({
          'refresh': 'true',
        });
      check(fake.to('GET', 'api.myfitnesspal.com', '/v2/foods').single.headers)
        ..['authorization'].equals('Bearer access-1')
        ..['mfp-client-id'].equals('mfp-main-js')
        ..['mfp-user-id'].equals('user-42')
        ..not((it) => it.containsKey('cookie'));
      check(await fake.sessionStore.read()).equals(sessionCookies);
    },
  );

  test(
    'cookies without a session token are refused before any request',
    () async {
      final fake = FakeMfp({});

      await check(
        fake.client.signIn(const MfpSessionCookies({'mfp_locale': 'fr'})),
      ).throws<MfpAuthException>(
        (e) => e
            .has((e) => e.failure, 'failure')
            .equals(MfpAuthFailure.noSessionCookie),
      );
      check(fake.requests).isEmpty();
    },
  );

  test('a login page instead of a token means the session is over, and it '
      'is forgotten', () async {
    final fake = FakeMfp({authToken: (_) => _loginPage()});
    await fake.sessionStore.write(sessionCookies);

    await check(fake.client.foods.byId('1')).throws<MfpAuthException>(
      (e) => e
          .has((e) => e.failure, 'failure')
          .equals(MfpAuthFailure.sessionExpired),
    );
    check(await fake.client.isSignedIn).isFalse();
  });

  test('a blocked token request keeps the session for a later retry', () async {
    final fake = FakeMfp({authToken: (_) => _loginPage(status: 403)});
    await fake.sessionStore.write(sessionCookies);

    await check(fake.client.foods.byId('1')).throws<MfpApiException>(
      (e) => e.has((e) => e.statusCode, 'statusCode').equals(403),
    );
    check(await fake.client.isSignedIn).isTrue();
  });

  test('a rejected sign-in leaves the stored session alone', () async {
    final fake = FakeMfp({authToken: (_) => _loginPage()});
    const stored = MfpSessionCookies({'_mfp_session': 'still-good'});
    await fake.sessionStore.write(stored);

    await check(fake.signIn()).throws<MfpAuthException>();
    check(await fake.sessionStore.read()).equals(stored);
  });

  test('the token is reused until a minute before it expires', () async {
    var issued = 0;
    final fake = FakeMfp({
      authToken: (_) => token(accessToken: 'access-${++issued}'),
      _foods: (_) => json({'items': <Object>[]}),
    });
    await fake.signIn();

    await fake.client.foods.byId('1');
    fake.clock = now.add(const Duration(minutes: 58, seconds: 59));
    await fake.client.foods.byId('2');
    fake.clock = now.add(const Duration(minutes: 59, seconds: 1));
    await fake.client.foods.byId('3');

    check(
      fake
          .to('GET', 'api.myfitnesspal.com', '/v2/foods')
          .map((r) => r.headers['authorization']),
    ).deepEquals(['Bearer access-1', 'Bearer access-1', 'Bearer access-2']);
  });

  test('an API 401 fetches a new token and retries once', () async {
    var issued = 0;
    var calls = 0;
    final fake = FakeMfp({
      authToken: (_) => token(accessToken: 'access-${++issued}'),
      _foods: (_) => ++calls == 1
          ? json({'error': 'invalid_token'}, status: 401)
          : json({'items': <Object>[]}),
    });
    await fake.signIn();

    await fake.client.foods.byId('1');

    check(
      fake
          .to('GET', 'api.myfitnesspal.com', '/v2/foods')
          .map((r) => r.headers['authorization']),
    ).deepEquals(['Bearer access-1', 'Bearer access-2']);
  });

  test('a token the API keeps rejecting ends the session', () async {
    final fake = FakeMfp({
      authToken: (_) => token(),
      _foods: (_) => json({'error': 'invalid_token'}, status: 401),
    });
    await fake.signIn();

    await check(fake.client.foods.byId('1')).throws<MfpAuthException>(
      (e) => e
        ..has((e) => e.failure, 'failure').equals(MfpAuthFailure.sessionExpired)
        ..has((e) => e.errors, 'errors').deepEquals(['invalid_token']),
    );
    check(await fake.client.isSignedIn).isFalse();
  });

  test('no request is sent while signed out', () async {
    final fake = FakeMfp({});

    await check(fake.client.diary.forDate(now)).throws<MfpAuthException>(
      (e) =>
          e.has((e) => e.failure, 'failure').equals(MfpAuthFailure.notSignedIn),
    );
    check(fake.requests).isEmpty();
  });
}
