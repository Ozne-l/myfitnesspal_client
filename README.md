# myfitnesspal_client

Unofficial Dart client for [MyFitnessPal](https://www.myfitnesspal.com): read
your food diary, search foods, and log them. It signs in with the session of a
browser where you are already logged in to myfitnesspal.com.

> Not affiliated with or endorsed by MyFitnessPal, Inc. This package talks to
> the private API the MyFitnessPal website uses. It can break without notice,
> and automating your account may go against MyFitnessPal's terms. Use it on
> your own account, at your own risk, and go easy on their servers.

Pure Dart: works in Flutter apps (iOS, Android, desktop), scripts and servers.
Not in a browser: the API does not allow cross-origin requests. The package
contains no API keys: `mfp-main-js` is the public client id of the website.

## What it covers

| Area | Calls |
|---|---|
| Session | `signIn` with browser cookies, automatic API tokens, `clearLocalSession` (local only) |
| Diary | `forDate`, `mealNames`, `addFood`, `remove` |
| Foods | `search`, `byId`, `byBarcode` |

`forDate`, `addFood`, `remove` and `byId` make the same requests as existing
open-source MyFitnessPal clients that work today. `byBarcode` was checked
against live responses in October 2026. `search` and `mealNames` have not
been checked against live responses yet.

## Install

Not on pub.dev. Depend on the repository:

```yaml
dependencies:
  myfitnesspal_client:
    git:
      url: https://github.com/Ozne-l/myfitnesspal_client
      ref: v0.1.0
```

## Use

```dart
import 'package:myfitnesspal_client/myfitnesspal_client.dart';

final mfp = MyFitnessPalClient(sessionStore: myPersistentStore);
await mfp.signIn(MfpSessionCookies.fromNetscapeFile(cookiesTxt));

final day = await mfp.diary.forDate(DateTime.now());
for (final entry in day.entries) {
  print('${entry.mealName}: ${entry.food.description} '
      '${entry.nutrients.energy?.kilocalories} kcal');
}

final [rice, ...] = await mfp.foods.search('riz basmati');
await mfp.diary.addFood(
  date: DateTime.now(),
  mealName: 'Lunch',
  food: rice,
  servingSize: rice.servingSizes.first,
  servings: 1.5,
);

switch (await mfp.foods.byBarcode('3017620422003')) {
  case MfpBarcodeFound(:final food):
    print('${food.description}: ${food.servingSizes.first.unit}');
  case MfpBarcodeUnresolved(:final description, :final brandName):
    print('Search "$description $brandName" by name instead');
  case MfpBarcodeUnknown():
    print('No food for this barcode');
}
```

### Signing in

MyFitnessPal's login form has a captcha, so this package never sees your
password. It needs the cookies of a signed-in browser session instead:

- **Scripts:** export the cookies of www.myfitnesspal.com in the Netscape
  `cookies.txt` format (any "export cookies" browser extension) and pass the
  file to `MfpSessionCookies.fromNetscapeFile`, or paste a request's
  `Cookie` header into `MfpSessionCookies.fromHeader`. Only cookies for
  `myfitnesspal.com` and `www.myfitnesspal.com` are kept.
- **Flutter:** open `https://www.myfitnesspal.com/account/login` in a web
  view, let the user sign in, then read the web view's cookies for
  `www.myfitnesspal.com` into `MfpSessionCookies`.

`signIn` checks the cookies right away. With the cookies, the client gets a
short-lived API token from the website and renews it on its own.

### Keeping the session

`MyFitnessPalClient` keeps the cookies in memory unless you pass an
`MfpSessionStore`. In Flutter, implement it on top of
`flutter_secure_storage`; `MfpSessionCookies.toJson()` and
`MfpSessionCookiesMapper.fromJson` handle the serialisation. The cookies give
full access to the account, so store them like a password.

The session lasts as long as the browser session would. When MyFitnessPal
ends it, calls fail with `MfpAuthFailure.sessionExpired` and the stored
cookies are cleared: sign in again. `clearLocalSession` only forgets the
cookies; the session stays valid until you sign out in the browser.

### Things the API does that you would not guess

- **Entry nutrients are totals.** `MfpFoodEntry.nutrients` already accounts
  for the servings and the serving size. `MfpFood.nutrients` are for one
  base serving; a serving size is worth `nutritionMultiplier` base servings.
- **Energy can be in kilojoules.** Read `energy.kilocalories` rather than
  `energy.value`.
- **Carbohydrates include fibre.** `netCarbs` is carbohydrates minus fibre.
  Sodium, potassium and cholesterol are in milligrams (`sodiumMilligrams`, …).
- **Meals are identified by name.** `addFood` needs one of your own meal
  names, as `mealNames` or `MfpFoodEntry.mealName` return them.
- **Foods are versioned.** `addFood` sends the food's `version`; MyFitnessPal
  refuses an outdated one, so pass a food you just got from `search` or
  `byId`, not a cached one.
- **Logging is not idempotent.** `addFood` returns the new entry's id; keep it
  if you may need to `remove` the entry. Entries read with `forDate` carry
  their `id` too (it is nullable only because the API does not promise it).
- **Barcodes go through another door.** The v2 API never returns an
  EAN/UPC, not on diary entries, not on foods, not with `fields[]=all`, and
  its search does not match barcodes. `byBarcode` asks the binary sync
  endpoint of the Android app (`sync.myfitnesspal.com/iphone_api/synchronize`)
  instead, which answers barcode lookups without any credentials, then reads
  the food from `/v2/foods` with your session. That endpoint is undocumented
  and older than the rest: it can change or close without notice, so keep
  text search as the fallback.
- **Barcode results need a human.** Barcode foods are contributed by users
  and rarely `verified`. In-store codes (prefixes `02` and `20` to `29`) are
  reused by different shops, so the same code can be a different product
  elsewhere. Let the user confirm the food and serving before logging it.
- **A scanned food may be an edited one.** The sync endpoint gives the food's
  original id and its current version; `byBarcode` fetches by the original
  id. When `/v2/foods` does not return it, you get `MfpBarcodeUnresolved`
  with the name and brand to search for.
- **Diary days are calendar days.** `MfpDiaryDay.date` and
  `MfpFoodEntry.date` are midnight UTC of the day, whatever the time zone.
- `forDate` ignores exercise and other diary items; `search` ignores results
  that are not foods (restaurants) and returns 25 foods unless you ask for
  `maxResults`.

### Errors

Every failure is an `MfpException`, a sealed class: `switch` over it to show
one message per case. Its `errors` carry the details for your logs.

| Exception | When | What to tell the user |
|---|---|---|
| `MfpAuthException(notSignedIn)` | no stored session | sign in |
| `MfpAuthException(noSessionCookie)` | the cookies passed to `signIn` hold no session | sign in again |
| `MfpAuthException(sessionExpired)` | MyFitnessPal ended the session; the stored cookies are cleared | sign in again |
| `MfpApiException` | an error status (`statusCode`), with the server's messages | MyFitnessPal refused the request |
| `MfpNetworkException` | no connection, DNS failure, connection lost; the session is kept | check the connection and retry |
| `MfpUnexpectedResponseException` | a response this client cannot read: not JSON, a missing field, a broken sync packet | MyFitnessPal changed something; update the app |
| `MfpBarcodeException(invalidBarcode)` | `checkBarcode` refused the code; nothing was sent | the code was misread, scan again |
| `MfpBarcodeException(rejected)` | the sync endpoint answered with a failure status | barcode lookup is unavailable, search by name |

`MfpAuthException(sessionExpired)` lists each request made while asking for
a token: status, path, redirect target and the names of the cookies the
website set. A `403` on `/user/auth_token` (an `MfpApiException`) usually
means the website's bot protection blocked the request: retry with your
browser's user agent as `userAgent`.

`checkBarcode` runs the same check on the device, without a request, so a
form can react while the code is typed. It returns an `MfpBarcodeCheck`:
`MfpValidBarcode` with its `MfpBarcodeFormat` (EAN-8, UPC-A, EAN-13,
GTIN-14), `MfpBarcodeNotDigits`, `MfpBarcodeWrongLength`, or
`MfpBarcodeWrongCheckDigit` with the `actual` and `expected` digits.

`byBarcode` reports the three normal outcomes as an `MfpBarcodeResult`, not as
errors: `MfpBarcodeFound`, `MfpBarcodeUnknown` (no food for this barcode) and
`MfpBarcodeUnresolved` (see above).

## Try it

```sh
export MFP_COOKIES=path/to/cookies.txt
dart run example/main.dart diary 2026-10-01
dart run example/main.dart search flocons d avoine
dart run example/main.dart meals
dart run example/main.dart barcode 3017620422003
```

The example only reads. Set `MFP_USER_AGENT` to your browser's user agent if
the sign-in is blocked.

## Develop

```sh
dart pub get
dart run build_runner build   # after changing a model
dart analyze && dart test
```

Tests run against made-up responses, or real ones whose ids and names were
replaced; they never call MyFitnessPal. Never commit cookies, account data,
or a capture you have not anonymised.

## License

MIT, see [LICENSE](LICENSE). Not affiliated with or endorsed by MyFitnessPal.
