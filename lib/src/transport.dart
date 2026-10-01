import 'dart:async';
import 'dart:convert';

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
    _access = await _fetchAccess(cookies);
    await _sessionStore.write(cookies);
  }

  Future<void> clearSession() async {
    _access = null;
    await _sessionStore.clear();
  }

  Future<String> userId() async => (await _freshAccess()).userId;

  Future<Object?> request(
    HttpMethod method,
    String path, {
    Map<String, dynamic>? query,
    Object? body,
  }) async {
    final access = await _freshAccess();
    final exchange = await _sendToApi(access, method, path, query, body);
    return switch (exchange.response.statusCode) {
      401 => _retryWithNewAccess(access, method, path, query, body),
      _ => _decodeOrThrow(exchange),
    };
  }

  Future<Object?> _retryWithNewAccess(
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
    return _decodeOrThrow(exchange);
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
    return _fetching ??= _fetchAccess(
      cookies,
    ).then((access) => _access = access).whenComplete(() => _fetching = null);
  }

  Future<ApiAccess> _fetchAccess(MfpSessionCookies cookies) async {
    final request =
        http.Request(
            HttpMethod.get.verb,
            _webUri.replace(
              path: _authTokenPath,
              queryParameters: _stringify(const AuthTokenQuery().toMap()),
            ),
          )
          ..headers.addAll({
            'accept': _jsonMediaType,
            'cookie': cookies.header,
            'user-agent': _userAgent,
          });
    final exchange = await _send(request);
    final response = exchange.response;
    final isJson = _isJson(response);
    switch (response.statusCode) {
      case 401:
      case >= 200 && < 300 when !isJson:
        await _forget(cookies);
        throw MfpAuthException(
          MfpAuthFailure.sessionExpired,
          isJson ? _errorMessages(response) : const [],
        );
    }
    final token = AuthTokenResponseMapper.fromMap(
      asMap(_decodeOrThrow(exchange)),
    );
    return ApiAccess(
      cookies: cookies,
      authorization: '${token.tokenType} ${token.accessToken}',
      userId: token.userId,
      expiresAt: _clock().add(Duration(seconds: token.expiresIn)),
    );
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

  Future<_Exchange> _send(http.Request request) async => (
    request: request,
    response: await http.Response.fromStream(await _httpClient.send(request)),
  );

  Object? _decodeOrThrow(_Exchange exchange) {
    final (:request, :response) = exchange;
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw MfpApiException(
        method: request.method,
        uri: request.url,
        statusCode: response.statusCode,
        errors: _errorMessages(response),
      );
    }
    return response.body.isEmpty ? null : jsonDecode(response.body);
  }

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

typedef _Exchange = ({http.Request request, http.Response response});
