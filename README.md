# LookStudio

## Overview

- **App name:** `lookstudio` (Flutter package name)
- **App id / bundle id:** `com.lookstudio.app`
- **Targeted platforms:** Android, iOS, web (Firebase options are configured for all three in `lib/core/firebase_options.dart`). The `linux`, `macos` and `windows` folders exist but are **not** targeted.
- **Backend:** Firebase project `lookstudio-a459b` (Auth with email/password and Google, Remote Config). Other HTTP calls go through `dio`.

Detailed architecture and coding rules live in [CLAUDE.md](CLAUDE.md).

## Tech stack

Versions are defined in [pubspec.yaml](pubspec.yaml) (Dart `>=3.2.2 <4.0.0`).

| Area | Choice |
| --- | --- |
| State management | `flutter_bloc` (Cubit by default) with `freezed` states |
| Dependency injection | `provider` |
| Navigation | `auto_route` 11 |
| Networking | `dio` + `dio_smart_retry` |
| Local data | Floor (SQLite), Hive, `shared_preferences`, `flutter_secure_storage` |
| Firebase | `firebase_core`, `firebase_auth`, `firebase_remote_config` |
| UI helpers | `flutter_screenutil` |
| Code generation | `build_runner`, `freezed`, `flutter_gen` (assets), `intl_utils` (l10n) |

## Project structure

```
lib/
├── main.dart, app_entry.dart     # bootstrap (Firebase, Hive, Floor DB) and MaterialApp.router
├── solution_injection.dart       # DI: list of Provider/ProxyProvider
├── configs/                      # AppConfig, environment (dart-define)
├── core/                         # theme, firebase_options, logger, app_update, biometric_service, Failure, UseCase
├── data/
│   ├── datasource/local/         # Floor DB, secure storage, solution storage
│   ├── datasource/network/       # api/, services/, interceptors/, exchange_models/
│   ├── entity/, mapper/          # data-layer entities and mappers to domain models
│   └── repositories/             # implementations of domain repository interfaces
├── domain/
│   ├── model/                    # plain models, Result<T> (freezed)
│   ├── repository/               # abstract repository interfaces
│   └── use_cases/
├── presentation/{feature}_screen/
│   ├── {feature}_screen.dart     # @RoutePage, creates the BlocProvider
│   ├── {feature}_layout.dart     # the UI
│   └── bloc/ or cubit/           # cubit/bloc + freezed state
├── navigation/                   # app_router.dart (auto_route), auth_guard.dart
├── widgets/                      # atomic design: tokens → molecules → organisms → templates → pages
├── l10n/, generated/             # ARB files and generated l10n/assets (committed)
└── utils/
```

Dependency direction: `presentation → domain ← data`. Presentation depends on the interfaces in `domain/repository`, never on concrete data classes.

## Prerequisites

- Flutter 3.47.x (stable) with a matching Dart SDK
- For Android: Android SDK (compileSdk 37), NDK 28.2.13676358, JDK 17
- For iOS: Xcode and CocoaPods (macOS only)

## Getting started

Generated files are **committed** to the repository. Never edit `*.freezed.dart`, `*.gr.dart`, `*.g.dart` or `lib/generated/**` by hand; change the source and regenerate.

```bash
flutter pub get
dart run build_runner build
```

If `build_runner` stops with "Conflicting outputs", use `dart run build_runner build --delete-conflicting-outputs`.

Run `dart run build_runner build` again after changing any `@freezed`, `@AutoRouterConfig`, `@RoutePage`, Floor or `flutter_gen` input, and commit the output.

After changing ARB files in `lib/l10n/`:

```bash
dart run intl_utils:generate
```

Assets (`lib/generated/assets`) are produced by the `flutter_gen` CLI (a dev dependency, so the pinned version is used), which is not part of `build_runner` in this repo (`flutter_gen_runner` is not a dependency). After adding or changing assets, regenerate them (output and integrations are configured in the `flutter_gen` section of `pubspec.yaml`):

```bash
dart run flutter_gen:flutter_gen -c pubspec.yaml
```

The other old steps (`brew install fluttergen`, `flutter upgrade build_runner`) are not required.

If you change the splash configuration in `pubspec.yaml` (`flutter_native_splash`), regenerate it with:

```bash
dart run flutter_native_splash:create
```

## Running the app

```bash
flutter run
```

Build-time options are passed with `--dart-define` (see `lib/configs/environment/environment_variables.dart`):

| Define | Values | Default |
| --- | --- | --- |
| `ENV` | `prod`, `dev`, `uat` | `uat` |
| `MOCK` | `none`, `assets`, `hard` | `none` |
| `vendorThemeConfiguration` | integer theme variant | `1` |

The `ENV` and `MOCK` values are matched case-insensitively (the define names themselves, including `vendorThemeConfiguration`, are case-sensitive). Unrecognized `ENV` values silently fall back to `uat`, and unrecognized `MOCK` values to `none`, so check spelling.

Example:

```bash
flutter run --dart-define=ENV=dev --dart-define=MOCK=assets --dart-define=vendorThemeConfiguration=1
```

## Testing and quality checks

```bash
flutter analyze            # must have zero errors
flutter test               # must pass
flutter build apk --debug  # for Android-affecting changes
```

## Configuration

- Per-environment URLs and Hive box prefixes: `lib/configs/app_config.dart`. **Note:** these URLs are all still template placeholders (not every one carries a `TODO` marker) and are not real LookStudio endpoints; replace them before relying on network calls.
- Firebase files (committed to the repo, so no extra setup is needed to build): `android/app/google-services.json`, `ios/Runner/GoogleService-Info.plist`, `lib/core/firebase_options.dart`. Regenerate with `flutterfire configure --project=lookstudio-a459b`.
- Do not commit new secrets, tokens or API keys.

## Platform notes

Android (see `android/settings.gradle`, `android/app/build.gradle`, `android/gradle/wrapper/gradle-wrapper.properties`):

- Gradle 9.6.0, Android Gradle Plugin 9.5.0, Kotlin 2.4.21 (Built-in Kotlin; `android/settings.gradle` still declares `org.jetbrains.kotlin.android` with `apply false`, but `app/build.gradle` does not apply it)
- `compileSdk = 37`, `minSdk = 26`
- `android.newDsl=false` in `android/gradle.properties` must stay until Flutter supports the new AGP DSL.
- Do not rename the package or app id without updating the Firebase configs, the iOS URL scheme in `ios/Runner/Info.plist`, and `MainActivity`'s package.

## Localization

No hardcoded UI strings. Add keys to both `lib/l10n/intl_en_US.arb` and `lib/l10n/intl_uk_UA.arb`, run `dart run intl_utils:generate`, and use `S.of(context).key` in code.
