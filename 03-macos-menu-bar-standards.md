# macOS Menu Bar Standards

## App Type

Good Enough is a macOS menu bar utility, not a full desktop app.

It should not feel like a web app inside a window.

## Menu Bar Requirements

The app must:

- appear in the macOS menu bar
- open a compact popover when clicked
- update icon state based on today's completion status
- persist state locally
- run without requiring a dock icon if practical

## MenuBarExtra

Use SwiftUI `MenuBarExtra`.

The app should use an SF Symbol for the menu bar icon.

## Dock Behavior

For MVP, hide the dock icon if practical.

Implementation note:
Set `LSUIElement` to `true` in the app Info.plist.

If this causes issues, leave the dock icon visible during development and remove it later.

## Popover Behavior

The popover should:

- open quickly
- be compact
- show today's challenge immediately
- show the heatmap
- provide the primary completion button
- provide quit access if needed

## Popover Size

Recommended:

- width: 280–340 px
- height: 260–380 px

Avoid scroll unless content exceeds the popover height.

## Menu Bar Icon States

Incomplete today:

- SF Symbol: `square`
- neutral/gray

Complete today:

- SF Symbol: `square.fill`
- accent/green if possible

If color rendering is inconsistent in the menu bar, use symbol state only.
