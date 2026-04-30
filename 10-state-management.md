# State Management

## Store

Create one central observable store.

Suggested name:

```swift
final class AppStore: ObservableObject
```

## Store Responsibilities

The store should manage:

- daily entries
- today's entry
- challenge generation
- completion action
- date rollover checks

## Published State

```swift
@Published var entries: [DailyEntry]
@Published var feedbackMessage: String?
```

## Core Methods

```swift
func ensureTodayExists()
func completeToday()
func getTodayEntry() -> DailyEntry?
func recentEntries(days: Int) -> [DailyEntry]
func checkForDateRollover()
```

## Date Rollover

Call `checkForDateRollover()` when:

- app launches
- popover opens
- app becomes active

If current local dateKey has no entry, create one.

## Completion Logic

When user clicks **That counts**:

1. Find today's entry.
2. Set status to `.complete`.
3. Set completedAt to now.
4. Save entries.
5. Set feedback message.
