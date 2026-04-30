# Codex Build Instructions

## Goal

Build the MVP of Good Enough as a native macOS SwiftUI menu bar app.

## Do First

Start with a clean SwiftUI macOS app.

Implement in this order:

1. MenuBarExtra shell
2. Popover UI
3. AppStore state
4. UserDefaults persistence
5. Static challenge bank/provider
6. Heatmap rendering
7. Completion behavior
8. Polish

## Do Not Build

Do not build:

- web app
- backend
- accounts
- mobile app
- complex settings
- notifications
- streaks
- analytics dashboard
- AI integration

## Primary Acceptance Test

A user can:

1. launch app
2. click menu bar icon
3. see today's challenge
4. click "That counts"
5. see today's square fill
6. quit/reopen app
7. see completion persisted

## Coding Preferences

- Prefer simple SwiftUI.
- Keep files small and focused.
- Use descriptive names.
- Avoid premature abstraction.
- Avoid dependencies.
- Use UserDefaults for MVP storage.
- Use semantic colors where possible.
- Make UI work in light and dark mode.

## If Ambiguous

Choose the simpler implementation.

The product should feel small, fast, and calm.
