import 'dart:io';

import 'package:myfitnesspal_client/myfitnesspal_client.dart';

const _usage = '''
Read-only tour of your own MyFitnessPal diary.

Sign in to www.myfitnesspal.com in a browser, export its cookies in the
Netscape cookies.txt format, then:

  export MFP_COOKIES=path/to/cookies.txt
  dart run example/main.dart diary [YYYY-MM-DD]
  dart run example/main.dart search <words>
  dart run example/main.dart meals
  dart run example/main.dart barcode <EAN>

Set MFP_USER_AGENT to your browser's user agent if the sign-in is blocked.''';

Future<void> main(List<String> args) async {
  final cookiesPath = Platform.environment['MFP_COOKIES'];
  if (args.isEmpty || cookiesPath == null) {
    stdout.writeln(_usage);
    exitCode = 64;
    return;
  }
  final mfp = MyFitnessPalClient(
    userAgent:
        Platform.environment['MFP_USER_AGENT'] ??
        MyFitnessPalClient.defaultUserAgent,
  );
  try {
    await mfp.signIn(
      MfpSessionCookies.fromNetscapeFile(
        await File(cookiesPath).readAsString(),
      ),
    );
    switch (args) {
      case ['diary']:
        await _diary(mfp, DateTime.now());
      case ['diary', final day]:
        await _diary(mfp, DateTime.parse(day));
      case ['search', ...final words] when words.isNotEmpty:
        await _search(mfp, words.join(' '));
      case ['meals']:
        stdout.writeln((await mfp.diary.mealNames()).join('\n'));
      case ['barcode', final barcode]:
        await _barcode(mfp, barcode);
      default:
        stdout.writeln(_usage);
        exitCode = 64;
    }
  } on MfpException catch (error) {
    stderr.writeln(error);
    exitCode = 1;
  } finally {
    mfp.close();
  }
}

Future<void> _diary(MyFitnessPalClient mfp, DateTime day) async {
  final diary = await mfp.diary.forDate(day);
  if (diary.entries.isEmpty) {
    stdout.writeln(
      'No food logged on ${diary.date.toIso8601String().substring(0, 10)}.',
    );
  }
  for (final entry in diary.entries) {
    stdout.writeln(
      [
        '${entry.mealName}:',
        _amount(entry.servings),
        '×',
        _amount(entry.servingSize.value),
        entry.servingSize.unit,
        entry.food.description,
        '- ${_kcal(entry.nutrients)}',
        '· P ${_grams(entry.nutrients.protein)}',
        'C ${_grams(entry.nutrients.carbohydrates)}',
        'F ${_grams(entry.nutrients.fat)}',
      ].join(' '),
    );
  }
  for (final totals in diary.mealTotals) {
    stdout.writeln('${totals.mealName} total: ${_kcal(totals.nutrients)}');
  }
}

Future<void> _search(MyFitnessPalClient mfp, String query) async {
  for (final food in await mfp.foods.search(query)) {
    stdout.writeln(
      [
        food.description,
        if (food.brandName case final brand?) '($brand)',
        if (food.verified ?? false) '✓',
        '- ${_kcal(food.nutrients)}',
        '· servings: ${food.servingSizes.map(_serving).join(', ')}',
        '· id ${food.id}',
      ].join(' '),
    );
  }
}

Future<void> _barcode(MyFitnessPalClient mfp, String barcode) async {
  switch (await mfp.foods.byBarcode(barcode)) {
    case MfpBarcodeFound(:final food):
      stdout.writeln(
        [
          food.description,
          if (food.brandName case final brand?) '($brand)',
          '- ${_kcal(food.nutrients)}',
          '· servings: ${food.servingSizes.map(_serving).join(', ')}',
          '· id ${food.id}',
        ].join(' '),
      );
    case MfpBarcodeUnresolved(:final description, :final brandName):
      stdout.writeln(
        'Known as "$description"${brandName == null ? '' : ' ($brandName)'}, '
        'but not in the food database: search it by name.',
      );
    case MfpBarcodeUnknown():
      stdout.writeln('No food for $barcode.');
  }
}

String _kcal(MfpNutrients? nutrients) =>
    switch (nutrients?.energy?.kilocalories) {
      final kcal? => '${kcal.round()} kcal',
      null => '? kcal',
    };

String _serving(MfpServingSize size) => '${_amount(size.value)} ${size.unit}';

String _grams(double? value) => value == null ? '?' : '${_amount(value)} g';

String _amount(double value) =>
    value == value.roundToDouble() ? '${value.round()}' : '$value';
