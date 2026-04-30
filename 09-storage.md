# Storage

## MVP Storage

Use `UserDefaults`.

This is enough for MVP because:

- data is small
- no account is needed
- no cloud sync is needed
- implementation is fast

## UserDefaults Keys

```swift
goodEnough.entries
```

## Storage Service

Create a storage service responsible for:

- loading entries
- saving entries

Suggested file:

```text
GoodEnoughStorage.swift
```

## Storage Behavior

On app launch:

1. Load entries from UserDefaults.
2. Ensure today's entry exists.

On completion:

1. Update today's entry.
2. Encode entries as JSON.
3. Save to UserDefaults.

## Error Handling

If decoding fails:

- do not crash
- return an empty entries array
- create today's entry
- optionally print debug message
