# LOOK-1 — Zero

> **Status: needs clarification.** The Jira ticket has the title "Zero" and an **empty description**.
> No feature, screen, or behaviour is defined. This spec does not invent one. It records what is known,
> lists the open questions, and gives a plan template that follows the project layering so it can be
> filled in once the ticket is clarified.

## Goal

Deliver the functionality referred to as "Zero" in LOOK-1. The exact intent is **unknown**.
Possible readings, to be confirmed with the ticket author:

1. A "zero state" / empty state screen (for example, no looks or items yet).
2. A zero/initial baseline: project bootstrap, a first screen, or a smoke test.
3. Something else entirely (a counter reset, zero-config setup, and so on).

Until confirmed, no production code should be written for this ticket.

## Open questions (blockers)

- What is the user-visible behaviour or screen? Is there a Figma link?
- Which feature area does it belong to (`presentation/{feature}_screen`)?
- Does it need backend or Firebase data, or local data only?
- Which platforms are in scope (Android, iOS, web)?
- Are new l10n strings needed? If so, what is the copy in English and Ukrainian?

## Acceptance criteria

Provisional; to be replaced once the ticket is clarified.

- [ ] The ticket description is completed and these criteria are updated to match it.
- [ ] The feature handles loading, loaded/empty, and error states (project rule).
- [ ] No hardcoded UI strings; keys are added to `intl_en_US.arb` and `intl_uk_UA.arb`, and `dart run intl_utils:generate` has been run.
- [ ] No hardcoded colors; the theme and `widgets/tokens/spacing.dart` are used.
- [ ] `flutter analyze` reports zero errors.
- [ ] `flutter test` passes, with new tests for any new cubit/bloc, repository, or mapper logic.
- [ ] `flutter build apk --debug` succeeds if Android-affecting.

## Implementation plan

Order is data → domain → presentation. Commit after each layer and run codegen when needed.

### 1. Data layer

- Only if the feature needs data: add an API in `data/datasource/network/api/` (with interface), or a Floor DAO/entity in `data/datasource/local/`.
- Add entity and mapper in `data/entity/` and `data/mapper/`.
- Implement the repository in `data/repositories/`. It returns `Result<T>` and does not throw.
- If there is no data requirement, skip this layer.

### 2. Domain layer

- Model in `domain/model/` (plain or freezed).
- Abstract `I{Feature}Repository` in `domain/repository/`.
- Use cases in `domain/use_cases/` if there is business logic.
- Register the repository in `lib/solution_injection.dart`.

### 3. Presentation layer

- `presentation/{feature}_screen/{feature}_screen.dart`: `@RoutePage()` with `static const path`, which creates the `BlocProvider`.
- `{feature}_layout.dart`: UI built with `BlocBuilder`/`BlocConsumer`, covering loading, loaded/empty, and error.
- `cubit/{feature}_cubit.dart` and `{feature}_state.dart` (freezed).
- Register the route in `navigation/app_router.dart`.
- Add l10n keys (EN and UK), then run `dart run intl_utils:generate`.
- Run `dart run build_runner build` and commit the generated output.

### 4. Tests

- Cubit/bloc tests for each state transition.
- Repository and mapper tests where applicable.
- A widget test for the empty and error states.

## Edge cases

To be refined once the behaviour is defined:

- Empty data set (the likely meaning of "zero").
- Network failure or timeout; retry via `dio_smart_retry`.
- Unauthenticated user (`auth_guard`) and expired token.
- Offline mode with local data only.
- Locale switch between EN and UK; long Ukrainian strings.
- Small screens and text scaling (`flutter_screenutil`).

## Out of scope

- Any behaviour not described in the clarified ticket.
- Renaming the package or app id, or changing Firebase configuration.
- Android Gradle/AGP changes.
- Desktop platforms.
- Refactoring unrelated features.
