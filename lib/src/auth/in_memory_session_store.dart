import 'package:myfitnesspal_client/src/auth/session_cookies.dart';
import 'package:myfitnesspal_client/src/auth/session_store.dart';

final class InMemoryMfpSessionStore implements MfpSessionStore {
  MfpSessionCookies? _cookies;

  @override
  Future<MfpSessionCookies?> read() async => _cookies;

  @override
  Future<void> write(MfpSessionCookies cookies) async => _cookies = cookies;

  @override
  Future<void> clear() async => _cookies = null;
}
