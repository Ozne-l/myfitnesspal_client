## Unreleased

- Every failure is now an `MfpException`. New: `MfpNetworkException` (was a
  raw `http.ClientException`) and `MfpUnexpectedResponseException` (was a
  `FormatException` or `MapperException`).
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
