# MVP Acceptance Criteria

## Product

- App is named Good Enough.
- App lives in the macOS menu bar.
- App gives one bare-minimum desk reset per day.
- Completing the challenge fills today's square.

## UX

- Primary button says "That counts".
- Completion feedback is calm and short.
- No guilt language exists.
- No onboarding is required.
- Popover opens quickly and is easy to understand.

## App Bar

- Incomplete state is visually different from complete state.
- Complete state updates immediately after user completes challenge.

## Heatmap

- Displays last 30 days.
- Today is represented.
- Completed days are filled.
- Incomplete/missing days are empty.

## Data

- Today's challenge persists throughout the day.
- Completion persists after app restart.
- A new day creates a new entry.
- Missing historical days do not crash the app.

## Challenge System

- Challenges come from curated bank.
- Challenge is under 60 seconds.
- Challenge requires no setup.
- Recent repeats are avoided where possible.

## Technical

- Native SwiftUI macOS app.
- Uses MenuBarExtra.
- Uses UserDefaults.
- No backend.
- No required network access.
