import 'package:http/http.dart' as http;
import 'package:myfitnesspal_client/src/auth/in_memory_session_store.dart';
import 'package:myfitnesspal_client/src/auth/session_cookies.dart';
import 'package:myfitnesspal_client/src/auth/session_store.dart';
import 'package:myfitnesspal_client/src/resources/diary.dart';
import 'package:myfitnesspal_client/src/resources/foods.dart';
import 'package:myfitnesspal_client/src/transport.dart';

final class MyFitnessPalClient {
  factory MyFitnessPalClient({
    MfpSessionStore? sessionStore,
    http.Client? httpClient,
    Uri? webUri,
    Uri? apiUri,
    String userAgent = defaultUserAgent,
    DateTime Function()? clock,
  }) {
    final store = sessionStore ?? InMemoryMfpSessionStore();
    final usedHttpClient = httpClient ?? http.Client();
    return MyFitnessPalClient._(
      MfpTransport(
        httpClient: usedHttpClient,
        sessionStore: store,
        webUri: webUri ?? defaultWebUri,
        apiUri: apiUri ?? defaultApiUri,
        userAgent: userAgent,
        clock: clock ?? DateTime.now,
      ),
      store,
      usedHttpClient,
      ownsHttpClient: httpClient == null,
    );
  }

  MyFitnessPalClient._(
    this._transport,
    this._sessionStore,
    this._httpClient, {
    required this._ownsHttpClient,
  }) : diary = MfpDiary(_transport),
       foods = MfpFoods(_transport);

  static final Uri defaultWebUri = Uri.parse('https://www.myfitnesspal.com');
  static final Uri defaultApiUri = Uri.parse('https://api.myfitnesspal.com');
  static const defaultUserAgent =
      'myfitnesspal_client/0.1.0 (unofficial; Dart)';

  final MfpTransport _transport;
  final MfpSessionStore _sessionStore;
  final http.Client _httpClient;
  final bool _ownsHttpClient;

  final MfpDiary diary;
  final MfpFoods foods;

  Future<void> signIn(MfpSessionCookies cookies) => _transport.signIn(cookies);

  Future<bool> get isSignedIn async => await _sessionStore.read() != null;

  Future<String> get userId => _transport.userId();

  Future<void> clearLocalSession() => _transport.clearSession();

  void close() {
    if (_ownsHttpClient) _httpClient.close();
  }
}
