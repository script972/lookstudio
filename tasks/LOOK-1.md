# LOOK-1 — Zero

> Ticket title: "Zero". Ticket description: **empty**.
>
> The ticket gives no behaviour, screen, Figma link or acceptance criteria, so this spec cannot
> be derived from it. Nothing below is a confirmed requirement. Items marked **(assumption)** are
> proposals to be confirmed in Jira before implementation starts. The implement step should not
> begin until the Open questions are answered.

## Goal

Undetermined. "Zero" most plausibly means one of the following (the owner must pick one):

1. **Bootstrap / baseline ticket:** the first ticket of the LOOK project, used to verify the harness
   pipeline (spec → implement → review → gate) end to end, with no product change.
2. **"Zero state" (empty state) UI:** a screen shown when a list has zero items (e.g. clients, breeds).
3. **Zero-value handling:** a counter, price or total showing `0` correctly.

**(assumption)** Until clarified, the working goal is option 2, a reusable empty state, because the app
already has list screens (`clients_screen`, `breeds_screen`) and the CLAUDE.md rule "every screen handles
loading, loaded and error states" has no empty case written down. If option 1 is correct, the plan
reduces to "no code change; the gate must pass on a clean branch".

## Acceptance criteria

Conditional on option 2 being confirmed:

1. A reusable empty-state widget exists in `widgets/molecules/` (icon or illustration, title, optional
   subtitle, optional action button).
2. `clients_screen` and `breeds_screen` show it when the loaded list has zero items, and do not show it
   while loading or after an error.
3. All text comes from `S.of(context)`, with keys in both `intl_en_US.arb` and `intl_uk_UA.arb`.
4. Colors come from `Theme.of(context)` / `SolutionTheme`, spacing from `widgets/tokens/spacing.dart`,
   sizes via `flutter_screenutil`, and assets via `flutter_gen`.
5. `flutter analyze` has zero errors and `flutter test` passes, including the new tests.

If option 1: `flutter analyze` and `flutter test` pass unchanged and the branch contains only this spec.

## Implementation plan (assumes option 2)

### Data
- No changes. Empty lists are already a valid `Result.success([])`; confirm the repositories do not turn an empty list into an error.

### Domain
- No new models, repositories or use cases.

### Presentation
- Add `widgets/molecules/empty_state.dart` (stateless, takes title, optional message and action).
- In each affected `*_layout.dart`, add an `isEmpty` branch to the loaded state (check how the freezed state exposes the list).
- Add l10n keys such as `clientsEmptyTitle`, `breedsEmptyTitle` and `emptyStateAction`, then run `dart run intl_utils:generate`.
- Add an illustration through `flutter_gen` only if the design provides one; otherwise use a theme-colored Material icon.
- No router changes. No new codegen beyond l10n, because no freezed state changes.

### Tests
- Widget test for the empty-state widget (renders title and fires the action callback).
- Layout or cubit test for each screen: an empty list shows the empty state, and a non-empty list does not.

## Edge cases

- Loading must not flash the empty state before data arrives.
- An error with no cached data shows the error state, not the empty state.
- A list that becomes empty after deleting the last item (if deletion exists) switches to the empty state.
- Long Ukrainian strings must not overflow at 360×640 or with large system font scale.
- Dark theme (if supported by `ThemeFactory`) keeps the contrast.

## Out of scope

- Any change to auth, navigation, Firebase or Android build configuration.
- New screens or features beyond the empty state.
- Pull-to-refresh, search, filtering and pagination.
- Home and profile screens, unless the owner lists them.

## Open questions (blocking)

1. What does "Zero" mean (options 1–3 above, or something else)?
2. Is there a Figma link for the design review?
3. Which screens are affected?
4. Should the Ukrainian copy be supplied by the product owner or drafted by the implementer?
