# Challenge Provider

## Purpose

The ChallengeProvider selects the daily challenge.

## MVP Requirements

The provider should:

- use a static challenge bank
- pick randomly
- avoid the last 3 challenges if possible
- return challenge text and category

## Suggested Model

```swift
struct Challenge: Codable, Equatable {
    let text: String
    let category: ChallengeCategory
}
```

## Provider Interface

```swift
struct ChallengeProvider {
    func challengeForToday(existingEntries: [DailyEntry]) -> Challenge
}
```

## Avoid Recent Repeats

Logic:

1. Get last 3 entries sorted by date descending.
2. Extract challenge text.
3. Filter challenge bank to exclude those texts.
4. If filtered list is empty, use full bank.
5. Pick random challenge.

## Do Not Regenerate

Once today's challenge is created and stored, do not change it automatically.

This preserves trust:
Today's task is today's task.
