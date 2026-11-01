# LOOK-3 — Readme file

> Ticket: "create reame file with basic info about current project" (typo in the original, meaning README).
> This is a **documentation-only** ticket. No Dart code, codegen, l10n or Android changes are involved.
> Note: `README.md` already exists, but it is the Flutter template text plus a list of codegen steps.
> The task is to **rewrite** it, not to create it from scratch.

## Goal

Replace the template `README.md` at the repo root with an accurate README that lets a new developer
understand what LookStudio is, how it is built, and how to run it. All content must reflect the
code as it is today (see `CLAUDE.md` and `pubspec.yaml`), not aspirations.

## Acceptance criteria

1. `README.md` no longer contains Flutter template text ("A new Flutter project", "Lab: Write your first Flutter app", etc.).
2. It contains these sections: Overview, Tech stack, Project structure, Prerequisites, Getting started (setup and codegen), Running the app, Testing and quality checks, Configuration, Platform notes, Localization.
3. Overview states the app name `lookstudio`, app/bundle id `com.lookstudio.app`, targeted platforms (Android, iOS, web) and the Firebase project `lookstudio-a459b`.
4. Tech stack matches `pubspec.yaml`: flutter_bloc/Cubit with freezed, provider for DI, auto_route 11, dio (+ dio_smart_retry), Floor/Hive/SharedPreferences/flutter_secure_storage, Firebase (Auth, Remote Config), flutter_screenutil, flutter_gen, intl_utils.
5. Project structure section shows the layered `lib/` tree (presentation → domain ← data) as in `CLAUDE.md`.
6. Setup commands are verified against the repo: `flutter pub get`, `dart run build_runner build`, `dart run intl_utils:generate` (only after ARB changes). Obsolete steps from the old README (brew install fluttergen, `flutter upgrade build_runner`, `fluttergen -c pubspec.yaml`) are removed or kept only if confirmed still required.
7. Documents the dart-define options from `lib/configs` (`ENV`, `MOCK`, `vendorThemeConfiguration`) with an example `flutter run` command.
8. Documents `flutter analyze`, `flutter test`, and `flutter build apk --debug`.
9. Android notes: Gradle 9.6.0, AGP 9.5.0, Kotlin 2.4.21, compileSdk 37, minSdk 26, `android.newDsl=false` must stay.
10. States that generated files are committed and must not be hand-edited.
11. Contains no secrets, tokens or API keys. Firebase config files are only referenced by path.
12. All relative links and file paths in the README resolve to real files.

## Implementation plan

Order follows the project layering; for a docs ticket only the last step produces changes.

### Data layer
- No changes. Read-only inspection to document accurately: `lib/data/` (Floor DB, secure storage, network API/services/interceptors, repositories).

### Domain layer
- No changes. Read-only inspection: `lib/domain/` (models, `Result<T>`, repository interfaces, use cases).

### Presentation / UI
- No app UI, routes, cubits, or l10n keys are added.
- Documentation work:
  1. Gather facts: `pubspec.yaml`, `CLAUDE.md`, `lib/configs/` (read exact dart-define names and defaults), `android/gradle.properties`, `config.yaml`, `skills/`.
  2. Draft the new `README.md` with the sections from the acceptance criteria.
  3. Run each documented command that is possible in the container (`flutter pub get`, `flutter analyze`, `flutter test`) and confirm it works as written.
  4. Check links and paths (for example with `ls`).
  5. Commit: `docs: rewrite README with project overview and setup`.

## Files affected

- `README.md` (rewritten)
- `tasks/LOOK-3.md` (this spec)

## Edge cases

- Existing README setup steps may still be needed by someone (fluttergen global activation). Verify before deleting; if unsure, keep them under a "Troubleshooting / legacy steps" note.
- `README.md` and `CLAUDE.md` can drift apart. Keep the README high-level and link to `CLAUDE.md` for detailed rules instead of duplicating them.
- Version numbers (Gradle, AGP, SDK) change often. Take them from the config files at writing time and point to the source file.
- The `pubspec.yaml` description is still "A new Flutter project."; updating it is optional and out of scope unless requested.
- No screenshots, product description or Figma link exists in the ticket. Do not invent product claims; keep the overview factual and mark unknowns as TODO if needed.
- The `tasks/` folder has its own `README.md`; do not touch it.
- Desktop folders (linux, macos, windows) exist but are not targeted. Say so explicitly.

## Out of scope

- Any Dart, Gradle, iOS or Firebase configuration changes.
- Changing `CLAUDE.md`, `pubspec.yaml`, or other docs (CONTRIBUTING, CHANGELOG, license).
- Adding CI badges, screenshots, or a product/marketing description.
- Translating the README (English only).
- Adding tests (nothing testable; the quality gate is still `flutter analyze` and `flutter test` staying green).

## Test / verification plan

- Manual read-through against `pubspec.yaml` and `CLAUDE.md`.
- Run the documented commands; confirm they succeed.
- `flutter analyze` and `flutter test` unchanged and passing (no code touched).
