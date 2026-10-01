import 'package:myfitnesspal_client/src/auth/session_cookies.dart';

abstract interface class MfpSessionStore {
  Future<MfpSessionCookies?> read();
  Future<void> write(MfpSessionCookies cookies);
  Future<void> clear();
}
