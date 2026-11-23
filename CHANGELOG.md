## Unreleased

- `measurements` reads, logs and removes body weights through
  `/v2/measurements`: `forDate`, `logWeight` (returns the created
  `MfpMeasurement`), `remove`. Units are `MfpWeightUnit.kilograms` or
  `pounds`.
- `checkBarcode` validates a barcode on the device and returns an
  `MfpBarcodeCheck` (valid with its `MfpBarcodeFormat`, not digits, wrong
  length, wrong check digit with the expected digit). `byBarcode` uses it.
- `foods.byBarcode` looks an EAN/UPC up through the Android app's sync
  endpoint, without credentials, then reads the food from `/v2/foods`. It
  returns `MfpBarcodeFound`, `MfpBarcodeUnknown` or `MfpBarcodeUnresolved`.
  `MyFitnessPalClient` takes a `syncUri`.
- Every failure is now an `MfpException`. New: `MfpNetworkException` (was a
  raw `http.ClientException`), `MfpUnexpectedResponseException` (was a
  `FormatException` or `MapperException`), and `MfpBarcodeException`
  (`invalidBarcode`, `rejected`).
- Signing in follows the website when `/user/auth_token` bounces through the
  login page, and keeps the cookies it sets on the way, as a browser does.
  Before, this ended in an HTTP client "redirect loop" error.
- A session the website still rejects throws
  `MfpAuthException(sessionExpired)` listing each step (status, path, redirect
  target, names of the cookies set).

## 0.1.0

- Sign in with the cookies of a browser session (cookies.txt export or a
  Cookie header); API tokens are fetched and renewed automatically.
- Diary: read a day's food entries and meal totals, list meal names, add a
  food, remove an entry.
- Foods: search the food database, look a food up by id.
