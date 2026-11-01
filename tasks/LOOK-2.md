# LOOK-2 — Add login/register screen

> Ticket: "Implement an authentication screen: email + password, Login and Register buttons, validation,
> navigate to main screen after login, loading indicator, error handling. Follow the LookStudio Figma mockup."
>
> **Important:** a login screen (`presentation/login_screen`) and a sign-up screen (`presentation/sign_up_screen`)
> already exist. They are partially working and have known defects (listed below). This ticket is to
> **rework and complete** them into one coherent auth flow, not to build from scratch.
> The Figma link is not in the ticket text; the design review must obtain it from Jira (see Open questions).

## Current state (as found in the code)

- Data: `AuthenticationApi` (Firebase Auth `signInWithEmailAndPassword` / `createUserWithEmailAndPassword` / Google).
  Every `FirebaseAuthException` is wrapped in `UnauthorizedError`, so the error code (`wrong-password`, `user-not-found`, …) is kept only inside `error`.
  The user id is built from `credential.credential?.providerId`, which is `null` for email/password sign-in, so the id (and the token saved from it) is an empty string.
- Domain: `IAuthRepository.login/register/googleLogin` return `Result<UserModel>`. No use cases.
- Presentation: `LoginCubit` + `LoginState` (freezed), `LoginLayout`, `LoginSuccessLayout` (in `widgets/pages`), `SignUpCubit`, `SignUpLayout`.
- Defects to fix:
  1. `LoginCubit.login` never emits `loading`; after an empty-field `emit` it does not `return` and still calls the API.
  2. All errors map to `wrongCredentialsError`; there is a `TODO` for error handling.
  3. `LoginSuccessLayout` uses the label "Username" and only checks for empty; no email-format or min-length-6 check. The username field's `value:` is wired to `_password`, and the password field's `errorText` uses `usernameError`.
  4. `SignUpCubit` never emits a loading state; on `orElse` nothing is emitted.
  5. `AuthGuard` is commented out in `app_router.dart`; `HomeRoute` is `initial: true`, so unauthenticated users land on Home.
  6. `LoginLayout` has the AppBar title `S.of(context).paid` ("Charge login") — wrong copy for this screen.
  7. No tests for auth.

## Goal

A user can enter an email and password and either log in or register. Input is validated on the client,
a loading indicator is shown while the request runs, Firebase errors are translated into clear localized
messages, and a successful login/registration opens the main (Home) screen. Unauthenticated users are
sent to the login screen on app start.

## Acceptance criteria

1. Login screen has an email field, a password field (obscured, with show/hide toggle if the Figma shows one), a **Login** button and a **Register** action. Labels/hints say "Email", not "Username".
2. Register is reachable from the login screen (existing `NotHaveAccount` molecule or a Register button per Figma) and opens the sign-up screen; the sign-up screen has the same two fields, a **Register** button and a link back to Login. (Decision: keep two routes, `LoginRoute` and `SignUpRoute`, as they are registered today; do not merge them into one screen with a toggle unless the Figma requires it.)
3. Validation (client-side, runs on submit, errors shown under the field):
   - email empty → "Email should not be empty"; email not matching a standard email pattern → "Enter a valid email";
   - password empty → "Password should not be empty"; password shorter than 6 characters → "Password must be at least 6 characters".
   - No request is sent while any field is invalid.
4. Tapping Login/Register with valid input emits a loading state: the form is replaced by (or overlaid with) `CircleProgress`, and the buttons cannot be pressed twice (no duplicate requests).
5. On success, the auth token and user are saved (existing `saveAuthToken` / `addUser`) and the app navigates to `HomeRoute` with `router.replace`, so Back does not return to the login screen.
6. Error handling, each with a localized message shown on the form (inline under the field or as a message banner, per Figma) and the form returns to an editable state with the entered email preserved:
   - wrong password (`wrong-password`, `invalid-credential`) → "Incorrect email or password";
   - email not found (`user-not-found`) → "No account found for this email". (Note: with Firebase email-enumeration protection on, the backend returns `invalid-credential` for both; in that case the generic message in the previous bullet is shown. Check the Firebase console setting and document the result in the PR.)
   - register: `email-already-in-use` → "An account with this email already exists"; `weak-password` → the min-length message;
   - `invalid-email` → the invalid-email message; `user-disabled` → "This account has been disabled";
   - `network-request-failed` → "No connection. Check your internet and try again";
   - `too-many-requests` → "Too many attempts. Try again later";
   - anything else → generic "Something went wrong" with a retry action.
7. App start: with no stored token the user sees the login screen; with a token the user sees Home. Logout (Profile screen) returns to the login screen.
8. No hardcoded UI strings: all new strings are in `intl_en_US.arb` **and** `intl_uk_UA.arb`, generated via `dart run intl_utils:generate`.
9. No hardcoded colors; use `Theme.of(context)` / `SolutionTheme` and `widgets/tokens/spacing.dart`. Sizes via `flutter_screenutil`. Layout matches the Figma on a small phone (360×640) and a large phone without overflow; keyboard open does not cause overflow (scrollable body).
10. `flutter analyze` has zero errors; `flutter test` passes, including the new tests below.

## Implementation plan

Follow data → domain → presentation; commit after each layer; run codegen when needed.

### 1. Data layer

- `data/datasource/network/exchange_models/action_errors.dart`: add `code` to `UnauthorizedError` (or add a dedicated `AuthError extends NetworkError` carrying `FirebaseAuthException.code`), and add a `ConnectionError` return for `network-request-failed`. Keep `error` as is for logging.
- `data/datasource/network/api/authentication/authentication_api.dart`:
  - build `UserModel.id` from `credential.user?.uid` (not `credential.credential?.providerId`); fall back to the email only if `user` is null (and treat that as `UnexpectedError`);
  - catch non-Firebase exceptions in `login`/`register` and return `ErrorResponse(UnexpectedError(...))` so nothing is thrown (project rule).
  - trim the email before sending.
- `data/repositories/auth_repository.dart`: no signature change. Make sure the error object passes through unchanged.
- Token: decide what to store as the auth token. Preferred: `await credential.user?.getIdToken()`; if that is out of scope, store the uid. Record the decision in the PR. (Interacts with `TokenInterceptor`; check it before changing.)

### 2. Domain layer

- `domain/model/auth_failure.dart` (new): plain enum `AuthFailureType { wrongCredentials, userNotFound, emailInUse, weakPassword, invalidEmail, userDisabled, network, tooManyRequests, unknown }`.
- `domain/model/auth_validators.dart` (new, pure Dart, no Flutter): `validateEmail(String)` and `validatePassword(String)` returning an enum/nullable error code (`empty`, `invalidFormat`, `tooShort`). Presentation maps codes to l10n strings. Used by both cubits so rules live in one place.
- Mapping `Object error → AuthFailureType` lives in the data mapper layer (`data/mapper/auth_error_mapper.dart`), so the domain stays free of Firebase types and presentation never inspects `FirebaseAuthException`.
- `IAuthRepository` stays as is (no use-case layer is used elsewhere in the project; do not add one just for this).

### 3. Presentation layer

- `LoginState` (freezed; regenerate with `dart run build_runner build`): `initial`, `loading`, `successfullyLogin`, `validationError({emailError, passwordError})`, `authError(AuthFailureType type)`. Remove the unused `unknownError(retryCallback)` / `emailNotVerified` / `wrongCredentialsError` / `fieldIsEmptyError` variants **only if** nothing else references them (grep first); update `FormValidation` accordingly.
- `LoginCubit.login({email, password})`: validate → if invalid emit `validationError` and `return`; else emit `loading`, call `repository.login`, on success save user/token (`await` both) and emit `successfullyLogin`, on error map to `authError`. Guard against re-entry while state is `loading`.
- `SignUpState` / `SignUpCubit`: same shape (`loading`, `validationError`, `authError`, `signedUp`). `googleLogin` also emits `loading` and handles user cancel without showing an error (cancel is not a failure).
- `LoginLayout` / `LoginSuccessLayout` → rename to `LoginForm` (kept in `widgets/pages` or moved to `presentation/login_screen/widgets`, whichever is smaller) and fix the wiring bugs listed above (email `value`, password `errorText`). Use `S.of(context).email`; `TextInputType.emailAddress`, `AutofillHints.email` / `.password`, `textInputAction` next/done. Wrap the body in `SingleChildScrollView` + `SafeArea`; remove the `ConstrainedBox(maxHeight: 500)` / `Spacer` combination that overflows with the keyboard.
- Reuse design-system pieces: `InputItem`, `ButtonItem`, `CircleProgress`, `NotHaveAccount`, `AlreadyHaveAccount`, `CommonDialog` (for the generic error with retry). Add a new molecule only if the Figma has a component that does not exist (e.g. a password visibility toggle: `InputItem` already supports `hideSvgModel`).
- Fix the AppBar title (`paid` → a login/register title key). Remove the `paid` / `charge_registration` keys only if unused elsewhere.
- Navigation: `context.router.replace(const HomeRoute())` on success (already in `LoginLayout`; add the same to sign-up). Re-enable `AuthGuard` on `HomeRoute` in `app_router.dart` and change `AuthGuard` to `router.replaceAll([const LoginRoute()])` instead of `push` (a pushed login would leave Home on the stack). Logout in `ProfileScreen` should clear the token and `replaceAll` to `LoginRoute` (verify it does).
- l10n keys to add (EN and UK): `email`, `emailShouldntBeEmpty`, `emailInvalid`, `passwordTooShort`, `login` (button), `register` (button), `authErrorWrongCredentials`, `authErrorUserNotFound`, `authErrorEmailInUse`, `authErrorUserDisabled`, `authErrorNetwork`, `authErrorTooManyRequests`, `authErrorUnknown`, `retry`, screen titles. Existing keys `passwordShouldntBeEmpty`, `incorrectUsernameOrPassword`, `sign_in`, `sign_up` may be reused or renamed; do not leave unused duplicates.

### 4. Tests (`test/`)

- `auth_validators_test.dart`: valid/invalid emails (empty, no `@`, no domain, spaces, surrounding whitespace), password of 0, 5, 6, 7 chars.
- `auth_error_mapper_test.dart`: each Firebase code → expected `AuthFailureType`; unknown code and non-Firebase error → `unknown`.
- `login_cubit_test.dart` and `sign_up_cubit_test.dart` with a fake `IAuthRepository` (hand-written fake; use `bloc_test` only if already in `dev_dependencies`, otherwise add it): invalid input emits `validationError` and does **not** call the repository; success emits `loading → successfullyLogin` and saves token/user; each error type emits `loading → authError(type)`; double tap while loading calls the repository once.
- `authentication_api_test.dart` if a Firebase Auth mock is available (`firebase_auth_mocks`); otherwise skip and note it.
- One widget test for the login form: tapping Login with empty fields shows both validation messages and sends no request.

## Edge cases

- Email with leading/trailing spaces or autofill adding a trailing space: trim before validate and send.
- Email case: Firebase treats email as case-insensitive; do not lowercase the displayed value, but it is harmless to lowercase before sending.
- Password with leading/trailing spaces is **not** trimmed. Length is counted as typed.
- Double tap on Login / pressing the keyboard "done" action while a request is in flight.
- Leaving the screen (back / route replace) while the request is running: the cubit must not emit after `close()` (check `isClosed`) and must not navigate twice.
- Offline / airplane mode; request timeout; Firebase down.
- Firebase email-enumeration protection hides `user-not-found` (see AC 6).
- Registering an email that already has an account created through Google sign-in.
- Google sign-in cancelled by the user: no error shown, form stays editable.
- Persisting the user in Floor (`addUser`) throws: login must still succeed or show an error, not hang on loading. `getInsertUser()` uses `insertUser!` and can crash if no row exists; do not call it from the new flow.
- App restart after login: token present → Home; token deleted/expired → login.
- Keyboard open on small screens, landscape orientation, large text scale (accessibility), dark theme, Ukrainian locale (longer strings).
- Autofill / password manager: `AutofillGroup` with `TextInput.finishAutofillContext()` after success.
- Web: Enter key submits; Google sign-in on web uses a different flow (see out of scope).

## Out of scope

- Google sign-in redesign (the existing button keeps working as is; only the loading/cancel handling above is touched).
- Email verification flow, password reset / "forgot password", change password.
- Biometric login (`biometric_service` is untouched), "remember me", multi-account switching (`getSavedUsers`).
- Apple sign-in, phone auth, social providers other than the existing Google button.
- Backend/Firebase console changes (enabling providers, email templates, enumeration protection settings), other than reading the current setting.
- Profile screen redesign beyond making Logout return to the login screen.
- Token refresh / `TokenInterceptor` changes beyond what the token decision in the data layer requires.
- Desktop platforms.

## Quality gate checklist

- [ ] `dart run build_runner build` and `dart run intl_utils:generate` run; generated files committed, none hand-edited
- [ ] `flutter analyze` — zero errors, no new warnings
- [ ] `flutter test` — green
- [ ] `flutter build apk --debug` — succeeds (auth/navigation touch Android-affecting code paths indirectly via Firebase)
- [ ] Manual reasoning pass over the golden path: launch → login screen → invalid input → valid login → loading → Home; wrong password → message, form editable; register → Home; logout → login

## Open questions (resolve before or during implementation)

1. Figma link is not in the ticket text: get it from Jira and confirm whether Login and Register are two screens or one screen with a mode switch, whether errors are inline or a banner, and whether there is a password visibility toggle.
2. Which value is the auth token: Firebase uid or ID token (see data layer)?
3. Is Firebase email-enumeration protection enabled for `lookstudio-a459b`? This decides whether "email not found" can be distinguished from "wrong password".
4. Should the empty-state `HomeRoute initial: true` + `AuthGuard` be re-enabled in this ticket (the plan assumes yes), or is a separate ticket planned?
