# Data Model

## Swift Model

```swift
struct DailyEntry: Codable, Identifiable, Equatable {
    var id: String { dateKey }

    let dateKey: String
    let challenge: String
    let category: ChallengeCategory
    var status: DailyStatus
    var createdAt: Date
    var completedAt: Date?
}
```

## Supporting Types

```swift
enum DailyStatus: String, Codable {
    case incomplete
    case complete
    case skipped
}

enum ChallengeCategory: String, Codable {
    case movement
    case eyes
    case breathing
    case deskReset
    case screenReset
    case tinyAdmin
}
```

## Date Key

Use local device date formatted as:

```text
YYYY-MM-DD
```

Example:

```text
2026-04-24
```

## Design Notes

- `dateKey` is the unique identifier for a day.
- Store the selected challenge permanently for that day.
- Do not regenerate today's challenge after it is created.
