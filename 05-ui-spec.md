# UI Spec

## Popover Layout

Recommended order:

1. Header
2. Today's challenge
3. Completion button
4. Completion feedback
5. Heatmap
6. Footer row

## Wireframe

```text
┌──────────────────────────────┐
│ Good Enough                  │
│                              │
│ Today                        │
│ Stand up for 10 seconds.     │
│                              │
│ [ That counts ]              │
│                              │
│ Nice.                        │
│                              │
│ □ □ ■ □ ■ ■ □ ■ □ □ ■ □ ■    │
│ □ ■ □ □ ■ □ ■ ■ □ ■ □ □ ■    │
│                              │
│                         Quit │
└──────────────────────────────┘
```

## Header

Text:
Good Enough

Keep small and quiet.

## Challenge Text

- Font: system body or title3
- Should be the visual focus
- One sentence only
- Avoid wrapping beyond two lines

## Primary Button

Text:
That counts

Behavior:

- enabled when today's status is incomplete
- disabled/replaced when complete
- clicking updates today's status

## Completion Feedback

Show only after completion.

Examples:

- Nice.
- Good enough.
- Counted.

## Heatmap

Show last 30 days.

MVP layout:
Two rows of 15 squares.

## Footer

MVP footer may include:

- quit button

Keep footer subtle.
