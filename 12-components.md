# Component Structure

## Recommended File Structure

```text
GoodEnough/
  GoodEnoughApp.swift
  Models/
    DailyEntry.swift
    Challenge.swift
  State/
    AppStore.swift
  Services/
    GoodEnoughStorage.swift
    ChallengeProvider.swift
    DateKeyProvider.swift
  Views/
    MenuBarIconView.swift
    PopoverView.swift
    ChallengeCardView.swift
    HeatmapView.swift
    DaySquareView.swift
    FooterView.swift
  Resources/
    ChallengeBank.swift
```

## GoodEnoughApp.swift

Responsible for:

- app entry
- creating AppStore
- wiring MenuBarExtra
- injecting environment object

## MenuBarIconView

Responsible for:

- showing incomplete/complete icon
- reacting to today's status

## PopoverView

Responsible for:

- layout composition
- calling rollover check on appear
- showing challenge, button, heatmap, footer

## ChallengeCardView

Responsible for:

- displaying today's challenge
- showing primary button
- displaying feedback

## HeatmapView

Responsible for:

- rendering last 30 days
- mapping entries to squares

## DaySquareView

Responsible for:

- visual square
- status-based color
- optional today border

## FooterView

Responsible for:

- quit button if needed
