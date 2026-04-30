# Implementation Plan

## Build Philosophy

Build the smallest complete loop first.

Do not build notifications or settings.

## Phase 1: Native Shell

Goal:
App appears in macOS menu bar and opens a popover.

Tasks:

- Create SwiftUI macOS app
- Add MenuBarExtra
- Add MenuBarIconView
- Add PopoverView
- Hide dock icon if simple

Definition of done:

- app runs
- menu bar icon appears
- clicking icon opens popover

## Phase 2: Static UI

Goal:
Make the product feel real with hardcoded content.

Tasks:

- Build ChallengeCardView
- Add "That counts" button
- Build HeatmapView with mock data
- Add completion feedback mock

Definition of done:

- UI visually matches spec
- heatmap renders 30 squares

## Phase 3: Data + Persistence

Goal:
Make completion real and persistent.

Tasks:

- Add DailyEntry model
- Add AppStore
- Add UserDefaults storage
- Add today creation logic
- Save completion state

Definition of done:

- complete today's challenge
- restart app
- completed state remains

## Phase 4: Challenge Rotation

Goal:
Generate a new tiny challenge each day.

Tasks:

- Add ChallengeBank
- Add ChallengeProvider
- Avoid recent repeats
- Store selected challenge per day

Definition of done:

- new day gets a challenge
- today's challenge does not change during day

## Phase 5: Heatmap Connected to Real Data

Goal:
Show real completion history.

Tasks:

- Generate last 30 date keys
- Map entries to DaySquareView
- Mark today distinctly

Definition of done:

- completed days are filled
- missing/incomplete days are empty

## Phase 6: Polish

Goal:
Make it feel satisfying.

Tasks:

- add subtle square animation
- add completion feedback
- auto-close after completion delay
- refine spacing and typography
- test light/dark mode

Definition of done:

- loop feels smooth
- no UI clutter
