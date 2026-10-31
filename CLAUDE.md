# LookStudio Flutter — Project Rules

This file is read by Claude Code when working on this project via the AI Harness.
It describes the code **as it actually is**. If you change the architecture, update this file.

## Project

- Flutter app (Android, iOS, web; desktop folders exist but are not targeted). Dart `>=3.2.2 <4.0.0`, Flutter 3.47.x stable.
- Package name: `lookstudio`. App id / bundle id: `com.lookstudio.app`.
- Backend: Firebase project `lookstudio-a459b` (Auth: email/password + Google, Remote Config). Other HTTP calls go through `dio`.
- Always import project files as `package:lookstudio/...` (never `package:aircode_starter/...`; that name is gone).

## Architecture (layered, MVVM-ish with Cubit/Bloc)

```
lib/
├── main.dart, app_entry.dart     # bootstrap (Firebase, Hive, Floor DB) and MaterialApp.router
├── solution_injection.dart       # DI: list of Provider/ProxyProvider (package:provider)
├── configs/                      # AppConfig, environment (dart-define: ENV, MOCK, vendorThemeConfiguration)
├── core/                         # theme, firebase_options, logger, app_update, biometric_service, Failure, UseCase
├── data/
│   ├── datasource/local/         # Floor DB (database/, DAOs/), secure storage, solution storage (+ facade/ interfaces)
│   ├── datasource/network/       # api/ (per-feature API + interface), services/, interceptors/, exchange_models/
│   ├── entity/, mapper/          # data-layer entities and mappers to domain models
│   └── repositories/             # implementations of domain repository interfaces
├── domain/
│   ├── model/                    # plain models, `Result<T>` (freezed)
│   ├── repository/               # abstract interface classes (IAuthRepository, ...)
│   └── use_cases/
├── presentation/{feature}_screen/
│   ├── {feature}_screen.dart     # @RoutePage, creates the BlocProvider
│   ├── {feature}_layout.dart     # the UI (BlocBuilder/BlocConsumer)
│   └── bloc/ or cubit/           # *_cubit.dart / *_bloc.dart + *_state.dart (freezed)
├── navigation/                   # app_router.dart (auto_route), auth_guard.dart
├── widgets/                      # atomic design: tokens/ → molecules/ → organisms/ → templates/ → pages/
├── l10n/, generated/             # ARB files and generated l10n/assets (committed)
└── utils/
```

Dependency direction: `presentation → domain ← data`. Presentation depends on **interfaces** from `domain/repository`
(resolved through `Provider.of<IXRepository>`), never on concrete data classes.

## Stack and conventions

- **State:** `flutter_bloc` (Cubit by default, Bloc when events are needed). States are `freezed` classes with `.when/.maybeWhen`-style access.
  - freezed 4 generates `when`/`maybeWhen`/`map` as **extensions**: import the file that defines the freezed class (e.g. `domain/model/result.dart`) wherever you call them.
- **DI:** `package:provider` only. Register new services in `lib/solution_injection.dart`. No GetIt, no Riverpod.
- **Navigation:** `auto_route` 11. Screens are `@RoutePage()` classes with a `static const path`. Register routes in `navigation/app_router.dart`
  (`AppRouter extends RootStackRouter`, used via `routerConfig: _router.config()`). Do **not** use GoRouter.
- **Errors:** repositories and APIs return `Result<T>` / `NetworkResponse<T>`; don't throw from them. Every screen handles loading, loaded and error states.
- **Local data:** Floor (SQLite) for structured data, Hive/SharedPreferences for simple values, `flutter_secure_storage` for tokens.
- **Networking:** `dio` via the network service, with `TokenInterceptor` and `dio_smart_retry`.
- **Strings:** no hardcoded UI strings. Add keys to `lib/l10n/intl_en_US.arb` **and** `intl_uk_UA.arb`, then run `dart run intl_utils:generate`.
  Use `S.of(context).key`.
- **Theme/colors:** use the theme (`ThemeFactory`, `SolutionTheme`, `Theme.of(context)`); no hardcoded hex colors in screens or widgets. Spacing: `widgets/tokens/spacing.dart`.
- **Assets:** `flutter_gen` (`lib/generated/assets`); don't reference asset paths as raw strings.
- **Responsive sizes:** `flutter_screenutil`.
- **Style:** `flutter_lints` + `always_use_package_imports` (prefer `package:lookstudio/...` imports in new code). Keep new code free of analyzer errors.
- Keep files small and layered: UI in `*_layout.dart`, logic in cubit/bloc, I/O in repositories.

## Code generation (generated files ARE committed)

Run after changing any `@freezed`, `@AutoRouterConfig`, `@RoutePage`, Floor, or `flutter_gen` input, and commit the output:

```
dart run build_runner build
dart run intl_utils:generate        # only after ARB changes
```

Never edit `*.freezed.dart`, `*.gr.dart`, `*.g.dart`, `lib/generated/**` by hand.
On a fresh clone, run `flutter pub get` and `dart run build_runner build` before `flutter analyze` / `flutter test`.

## Quality gate

- `flutter analyze` — must have **zero errors** (existing `info`/lint noise is tolerated; don't add new warnings).
- `flutter test` — must pass. Add tests for new logic (cubits/blocs, repositories, mappers). `test/` currently only holds a smoke test.
- `integration_test/` does not exist yet; create it only if the ticket needs it.
- Build check for Android-affecting changes: `flutter build apk --debug`.

## Android / platform notes

- Gradle 9.6.0, AGP 9.5.0, Kotlin 2.4.21 with **Built-in Kotlin** (no `kotlin-android` plugin in `app/build.gradle`; Kotlin JVM target set via `kotlin { compilerOptions { ... JVM_17 } }`).
- `android.newDsl=false` in `android/gradle.properties` must stay until Flutter supports the new AGP DSL.
- `compileSdk = 37`, `minSdk = 26`, NDK 28.2.13676358. The `google-services` Gradle plugin is applied.
- Firebase files: `android/app/google-services.json`, `ios/Runner/GoogleService-Info.plist`, `lib/core/firebase_options.dart`
  (regenerate with `flutterfire configure --project=lookstudio-a459b`). Do not commit new secrets elsewhere.
- Do not rename the package or app id without updating Firebase configs, the iOS URL scheme in `ios/Runner/Info.plist`, and `MainActivity`'s package.

## Workflow steps reference

When executing harness workflow steps:

- **spec**: create `tasks/{JIRA_KEY}.md` with an implementation plan (affected layers, files, states, l10n keys, tests).
- **implement**: follow data → domain → presentation order; commit after each layer; run codegen when needed.
- **code_review**: use the `/code-review` skill.
- **design_review**: compare against Figma (see the Figma link in the Jira ticket).
- **integration**: run `flutter test` (and `flutter test integration_test/` if that folder exists).
- **qa**: build (`flutter build apk --debug`) and verify the golden path described in the spec; the harness container has no emulator, so reason from code and tests.
- **gate**: verify `flutter analyze` has no errors and `flutter test` is green.
