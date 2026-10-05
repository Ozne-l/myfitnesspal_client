import 'dart:async';
import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';

import 'package:http/http.dart' as http;
import 'package:myfitnesspal_client/src/auth/api_access.dart';
import 'package:myfitnesspal_client/src/auth/session_cookies.dart';
import 'package:myfitnesspal_client/src/auth/session_store.dart';
import 'package:myfitnesspal_client/src/decoding.dart';
import 'package:myfitnesspal_client/src/exceptions/auth_failure.dart';
import 'package:myfitnesspal_client/src/exceptions/mfp_exception.dart';
import 'package:myfitnesspal_client/src/http_method.dart';
import 'package:myfitnesspal_client/src/requests/auth_token_query.dart';
import 'package:myfitnesspal_client/src/requests/auth_token_response.dart';
import 'package:myfitnesspal_client/src/requests/error_response.dart';

final class MfpTransport {
  MfpTransport({
    required this._httpClient,
    required this._sessionStore,
    required this._webUri,
    required this._apiUri,
    required this._userAgent,
    required this._clock,
  });

  static const _authTokenPath = '/user/auth_token';
  static const _webClientId = 'mfp-main-js';
  static const _jsonMediaType = 'application/json';
  static const _expiryMargin = Duration(minutes: 1);
  static const _maxAuthHops = 5;
  static const _locationHeader = 'location';
  static const _setCookieHeader = 'set-cookie';

  final http.Client _httpClient;
  final MfpSessionStore _sessionStore;
  final Uri _webUri;
  final Uri _apiUri;
  final String _userAgent;
  final DateTime Function() _clock;
  ApiAccess? _access;
  Future<ApiAccess>? _fetching;

  Future<void> signIn(MfpSessionCookies cookies) async {
    if (!cookies.hasSession) {
      throw const MfpAuthException(MfpAuthFailure.noSessionCookie);
    }
    final access = await _fetchAccess(cookies);
    _access = access;
    await _sessionStore.write(access.cookies);
  }

  Future<void> clearSession() async {
    _access = null;
    await _sessionStore.clear();
  }

  Future<String> userId() async => (await _freshAccess()).userId;

  Future<T> request<T>(
    HttpMethod method,
    String path,
    T Function(Object? json) decode, {
    Map<String, dynamic>? query,
    Object? body,
  }) async {
    final access = await _freshAccess();
    final exchange = await _sendToApi(access, method, path, query, body);
    final accepted = switch (exchange.response.statusCode) {
      401 => await _retryWithNewAccess(access, method, path, query, body),
      _ => exchange,
    };
    return _decodeJson(accepted, decode);
  }

  Future<_Exchange> _retryWithNewAccess(
    ApiAccess rejected,
    HttpMethod method,
    String path,
    Map<String, dynamic>? query,
    Object? body,
  ) async {
    if (identical(_access, rejected)) _access = null;
    final access = await _freshAccess();
    final exchange = await _sendToApi(access, method, path, query, body);
    switch (exchange.response.statusCode) {
      case 401:
        await _forget(access.cookies);
        throw MfpAuthException(
          MfpAuthFailure.sessionExpired,
          _errorMessages(exchange.response),
        );
    }
    return exchange;
  }

  Future<ApiAccess> _freshAccess() async {
    final cookies = await _sessionStore.read();
    if (cookies == null) {
      throw const MfpAuthException(MfpAuthFailure.notSignedIn);
    }
    final cached = _access;
    if (cached != null &&
        cached.cookies == cookies &&
        _clock().add(_expiryMargin).isBefore(cached.expiresAt)) {
      return cached;
    }
    return _fetching ??= _fetchAccess(cookies)
        .then((access) => _keep(access, cookies))
        .whenComplete(() => _fetching = null);
  }

  Future<ApiAccess> _keep(ApiAccess access, MfpSessionCookies sent) async {
    if (access.cookies != sent) await _sessionStore.write(access.cookies);
    return _access = access;
  }

  Future<ApiAccess> _fetchAccess(MfpSessionCookies cookies) async {
    var uri = _webUri.replace(
      path: _authTokenPath,
      queryParameters: _stringify(const AuthTokenQuery().toMap()),
    );
    var current = cookies;
    final trail = <String>[];
    for (var hop = 0; hop < _maxAuthHops; hop++) {
      final exchange = await _send(_authRequest(uri, current));
      final response = exchange.response;
      final setCookies = response.headersSplitValues[_setCookieHeader] ?? [];
      current = current.withSetCookies(setCookies);
      trail.add(_describeHop(uri, response, setCookies));
      final next = _webRedirect(uri, response);
      if (next == null) return _accessFrom(exchange, cookies, current, trail);
      uri = next;
    }
    return _expire(cookies, trail);
  }

  http.Request _authRequest(Uri uri, MfpSessionCookies cookies) =>
      http.Request(HttpMethod.get.verb, uri)
        ..followRedirects = false
        ..headers.addAll({
          'accept': _jsonMediaType,
          'cookie': cookies.header,
          'user-agent': _userAgent,
        });

  Uri? _webRedirect(Uri from, http.Response response) {
    final location = response.headers[_locationHeader];
    if (location == null || response.statusCode ~/ 100 != 3) return null;
    final target = from.resolve(location);
    return target.host == _webUri.host ? target : null;
  }

  Future<ApiAccess> _accessFrom(
    _Exchange exchange,
    MfpSessionCookies sent,
    MfpSessionCookies current,
    List<String> trail,
  ) async {
    final response = exchange.response;
    final isJson = _isJson(response);
    switch (response.statusCode) {
      case 401:
      case >= 300 && < 400:
      case >= 200 && < 300 when !isJson:
        return _expire(sent, [
          ...trail,
          if (isJson) ..._errorMessages(response),
        ]);
    }
    final token = _decodeJson(
      exchange,
      (json) => AuthTokenResponseMapper.fromMap(asMap(json)),
    );
    return ApiAccess(
      cookies: current,
      authorization: '${token.tokenType} ${token.accessToken}',
      userId: token.userId,
      expiresAt: _clock().add(Duration(seconds: token.expiresIn)),
    );
  }

  Future<Never> _expire(MfpSessionCookies cookies, List<String> errors) async {
    await _forget(cookies);
    throw MfpAuthException(MfpAuthFailure.sessionExpired, errors);
  }

  static String _describeHop(
    Uri uri,
    http.Response response,
    List<String> setCookies,
  ) {
    final location = response.headers[_locationHeader];
    final names = [for (final c in setCookies) c.split('=').first.trim()];
    return [
      '${response.statusCode} ${uri.path}',
      if (location != null) '-> $location',
      if (names.isNotEmpty) '(set-cookie: ${names.join(', ')})',
    ].join(' ');
  }

  Future<void> _forget(MfpSessionCookies cookies) async {
    if (_access?.cookies == cookies) _access = null;
    if (await _sessionStore.read() == cookies) await _sessionStore.clear();
  }

  Future<_Exchange> _sendToApi(
    ApiAccess access,
    HttpMethod method,
    String path,
    Map<String, dynamic>? query,
    Object? body,
  ) {
    final request =
        http.Request(
            method.verb,
            _apiUri.replace(
              path: path,
              queryParameters: query == null ? null : _stringify(query),
            ),
          )
          ..headers.addAll({
            'accept': _jsonMediaType,
            'authorization': access.authorization,
            'mfp-client-id': _webClientId,
            'mfp-user-id': access.userId,
            'user-agent': _userAgent,
          });
    if (body != null) {
      request
        ..headers['content-type'] = _jsonMediaType
        ..body = jsonEncode(body);
    }
    return _send(request);
  }

  Future<_Exchange> _send(http.BaseRequest request) async {
    try {
      return (
        request: request,
        response: await http.Response.fromStream(
          await _httpClient.send(request),
        ),
      );
    } on http.ClientException catch (error) {
      throw MfpNetworkException(
        method: request.method,
        uri: request.url,
        errors: [error.message],
      );
    }
  }

  T _decodeJson<T>(_Exchange exchange, T Function(Object? json) decode) =>
      _decode(exchange, () {
        final body = exchange.response.body;
        return decode(body.isEmpty ? null : jsonDecode(body));
      });

  T _decode<T>(_Exchange exchange, T Function() decode) {
    final (:request, :response) = exchange;
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw MfpApiException(
        method: request.method,
        uri: request.url,
        statusCode: response.statusCode,
        errors: _errorMessages(response),
      );
    }
    try {
      return decode();
    } on FormatException catch (error) {
      throw _unexpected(exchange, error.message);
    } on MapperException catch (error) {
      throw _unexpected(exchange, error.message);
    }
  }

  static MfpUnexpectedResponseException _unexpected(
    _Exchange exchange,
    String reason,
  ) => MfpUnexpectedResponseException(
    method: exchange.request.method,
    uri: exchange.request.url,
    statusCode: exchange.response.statusCode,
    errors: [reason],
  );

  List<String> _errorMessages(http.Response response) {
    if (!_isJson(response) || response.body.isEmpty) return const [];
    try {
      return switch (jsonDecode(response.body)) {
        final Map<String, dynamic> json => ErrorResponseMapper.fromMap(
          json,
        ).messages,
        _ => [response.body],
      };
    } on FormatException {
      return [response.body];
    }
  }

  static bool _isJson(http.Response response) =>
      response.headers['content-type']?.toLowerCase().startsWith(
        _jsonMediaType,
      ) ??
      false;

  static Map<String, Object> _stringify(Map<String, dynamic> query) => {
    for (final MapEntry(:key, :value) in query.entries)
      key: switch (value) {
        final Iterable<Object?> values => [for (final v in values) '$v'],
        _ => '$value',
      },
  };
}

typedef _Exchange = ({http.BaseRequest request, http.Response response});
