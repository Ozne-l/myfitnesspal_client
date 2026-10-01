import 'package:dart_mappable/dart_mappable.dart';

part 'session_cookies.mapper.dart';

@MappableClass()
class MfpSessionCookies with MfpSessionCookiesMappable {
  const MfpSessionCookies(this.values);

  factory MfpSessionCookies.fromHeader(String header) => MfpSessionCookies({
    for (final pair in header.split(';'))
      if (pair.trim().split('=') case [
        final name,
        final first,
        ...final rest,
      ] when name.isNotEmpty)
        name: [first, ...rest].join('='),
  });

  factory MfpSessionCookies.fromNetscapeFile(String contents) =>
      MfpSessionCookies({
        for (final line in contents.split('\n'))
          if (_cookieFields(line) case [
            final domain,
            _,
            _,
            _,
            _,
            final name,
            final value,
          ] when _webDomains.contains(_withoutLeadingDot(domain)))
            name: value,
      });

  static const _httpOnlyPrefix = '#HttpOnly_';
  static const _comment = '#';
  static const _webDomains = {'myfitnesspal.com', 'www.myfitnesspal.com'};
  static const _sessionTokenMarker = 'session-token';
  static const _legacySessionCookie = '_mfp_session';

  final Map<String, String> values;

  bool get hasSession => values.keys.any(
    (name) =>
        name.contains(_sessionTokenMarker) || name == _legacySessionCookie,
  );

  String get header => [
    for (final MapEntry(:key, :value) in values.entries) '$key=$value',
  ].join('; ');

  static List<String> _cookieFields(String rawLine) {
    final line = rawLine.trimRight();
    return switch (line) {
      _ when line.startsWith(_httpOnlyPrefix) =>
        line.substring(_httpOnlyPrefix.length).split('\t'),
      _ when line.startsWith(_comment) => const [],
      _ => line.split('\t'),
    };
  }

  static String _withoutLeadingDot(String domain) =>
      domain.startsWith('.') ? domain.substring(1) : domain;
}
