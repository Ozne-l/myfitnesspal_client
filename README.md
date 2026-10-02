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
| Foods | `search`, `byId` |

`forDate`, `addFood`, `remove` and `byId` make the same requests as existing
open-source MyFitnessPal clients that work today. `search` and `mealNames`
have not been checked against live responses yet.

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
- **No barcodes.** The v2 API never returns an EAN/UPC, not on diary entries,
  not on foods, not with `fields[]=all` (checked against live responses in
  2026). Matching MyFitnessPal foods to another database therefore has to go
  through names and nutrients, or through a mapping the user confirms once.
  The mobile app does know barcodes, but gets them through its binary sync
  protocol, which needs the app's client credentials, which is out of scope here. If
  name matching proves too painful, that protocol is the place to look.
- **Diary days are calendar days.** `MfpDiaryDay.date` and
  `MfpFoodEntry.date` are midnight UTC of the day, whatever the time zone.
- `forDate` ignores exercise and other diary items; `search` ignores results
  that are not foods (restaurants) and returns 25 foods unless you ask for
  `maxResults`.

### Errors

Every deliberate error is an `MfpException`:

- `MfpAuthException`: `notSignedIn`, `noSessionCookie` (the cookies you
  passed contain no session), or `sessionExpired` (the session was rejected
  and has been cleared). Its `errors` list each request made while asking
  for a token: status, path, redirect target and the names of the cookies
  the website set.
- `MfpApiException`: any other error status, with the server's messages.
  A `403` on `/user/auth_token` usually means the website's bot protection
  blocked the request: retry with your browser's user agent as `userAgent`.

Network failures surface as `http.ClientException`, and a response this
client cannot decode as a `MapperException`.

## Try it

```sh
export MFP_COOKIES=path/to/cookies.txt
dart run example/main.dart diary 2026-10-01
dart run example/main.dart search flocons d avoine
dart run example/main.dart meals
```

The example only reads. Set `MFP_USER_AGENT` to your browser's user agent if
the sign-in is blocked.

## Develop

```sh
dart pub get
dart run build_runner build   # after changing a model
dart analyze && dart test
```

Tests run against made-up responses; they never call MyFitnessPal. Never
commit cookies, real captures, or account data.

## License

MIT, see [LICENSE](LICENSE). Not affiliated with or endorsed by MyFitnessPal.
