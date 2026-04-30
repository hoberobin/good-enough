# Menu Bar Icon

## Purpose

The menu bar icon is the ambient reminder.

It should communicate today's state instantly.

## States

### Incomplete

- SF Symbol: `square`
- neutral/gray if possible

### Complete

- SF Symbol: `square.fill`
- green/accent if possible

## Implementation

MenuBarExtra label can render:

```swift
Image(systemName: store.isTodayComplete ? "square.fill" : "square")
```

If color rendering is inconsistent in the menu bar, use symbol state only.

## Optional Text

Do not show text in the menu bar for MVP.

Avoid:

```text
Good Enough □
```

It uses too much space.

## Completion Update

When `completeToday()` runs:

- icon should immediately update from outline to filled
