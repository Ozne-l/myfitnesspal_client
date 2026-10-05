import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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

http.Response binaryFixture(String name) => binary(
  File('test/fixtures/$name').readAsBytesSync(),
);

http.Response binary(List<int> bytes) => http.Response.bytes(
  bytes,
  200,
  headers: {'content-type': 'application/octet-stream'},
);

Uint8List syncDataOf(http.Request request) {
  final body = request.bodyBytes;
  final start = _indexOf(body, ascii.encode('\r\n\r\n')) + 4;
  final end = _indexOf(body, ascii.encode('\r\n--'), from: start);
  return Uint8List.sublistView(body, start, end);
}

int _indexOf(List<int> bytes, List<int> needle, {int from = 0}) {
  for (var i = from; i <= bytes.length - needle.length; i++) {
    var matches = true;
    for (var j = 0; j < needle.length && matches; j++) {
      matches = bytes[i + j] == needle[j];
    }
    if (matches) return i;
  }
  throw StateError('multipart boundary not found');
}

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
