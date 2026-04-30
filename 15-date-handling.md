# Date Handling

## Principle

Use the user's local device date.

The app is personal and local. Do not use UTC for daily boundaries.

## Date Key Format

Use:

```text
YYYY-MM-DD
```

Example:

```text
2026-04-24
```

## DateKeyProvider

Create a small utility/service:

```swift
struct DateKeyProvider {
    func todayKey() -> String
    func key(for date: Date) -> String
    func lastNDays(_ count: Int) -> [String]
}
```

## Calendar

Use:

```swift
Calendar.current
TimeZone.current
Locale.current
```

## New Day Creation

A new DailyEntry should be created when:

- app launches and today's key does not exist
- popover opens and today's key does not exist
- date rollover check detects a new date

## App Open Overnight

If the app stays open overnight:

- menu bar icon may remain stale until interaction
- on popover open, run `checkForDateRollover()`
- create new entry if needed

This is acceptable for MVP.

## Historical Missing Days

If a historical date has no entry:

- render as incomplete
- do not create entries for all missing days unless needed
