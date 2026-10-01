import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:myfitnesspal_client/myfitnesspal_client.dart';

typedef Route = http.Response Function(http.Request request);

const authToken = 'GET www.myfitnesspal.com /user/auth_token';

final now = DateTime.utc(2026, 10, 1, 12);

const sessionCookies = MfpSessionCookies({
  '__Secure-next-auth.session-token': 'fake-session',
});

http.Response json(Object? body, {int status = 200}) => http.Response(
  jsonEncode(body),
  status,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

http.Response jsonFixture(String name) => http.Response(
  File('test/fixtures/$name').readAsStringSync(),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

http.Response token({String accessToken = 'access-1', int expiresIn = 3600}) =>
    json({
      'access_token': accessToken,
      'refresh_token': 'unused',
      'token_type': 'Bearer',
      'expires_in': expiresIn,
      'user_id': 'user-42',
    });

final class FakeMfp {
  FakeMfp(this.routes);

  final Map<String, Route> routes;
  final requests = <http.Request>[];
  final sessionStore = InMemoryMfpSessionStore();
  DateTime clock = now;

  late final client = MyFitnessPalClient(
    httpClient: MockClient((request) async {
      requests.add(request);
      final key = '${request.method} ${request.url.host} ${request.url.path}';
      final route = routes[key];
      if (route == null) throw StateError('Unexpected $key');
      return route(request);
    }),
    sessionStore: sessionStore,
    clock: () => clock,
  );

  Future<void> signIn() => client.signIn(sessionCookies);

  Iterable<http.Request> to(String method, String host, String path) =>
      requests.where(
        (r) => r.method == method && r.url.host == host && r.url.path == path,
      );

  Map<String, dynamic> bodyOf(http.Request request) =>
      jsonDecode(request.body) as Map<String, dynamic>;
}
