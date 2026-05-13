# Good Enough

Good Enough is a tiny macOS menu bar app for people working from home, at a desk, or in front of a computer all day.

It asks for the bare minimum: look away, stand up, close a tab, move one thing, take one breath. Click **That counts**. Today's square fills. Good enough.

No goals. No streak pressure. No notifications. No dashboard.

<img width="326" height="236" alt="CleanShot 2026-05-13 at 09 07 39" src="https://github.com/user-attachments/assets/b16f0e6a-2d9b-45ee-b47b-94a9c43e6c12" />


## What It Does

- Lives quietly in the macOS menu bar
- Shows one low-effort desk reset per local calendar day
- Keeps actions computer-adjacent, immediate, and under 60 seconds
- Lets you mark the day with **That counts**
- Persists completion locally with `UserDefaults`
- Shows the last 30 days as a compact heatmap
- Uses a curated static bank of tiny workday resets

## Requirements

- macOS 13 or newer
- Xcode 15 or newer recommended
- SwiftUI and `MenuBarExtra`

## Build And Run

Open the project in Xcode:

```sh
open GoodEnough/GoodEnough.xcodeproj
```

Then select the `GoodEnough` scheme and run it.

You can also build from the command line:

```sh
xcodebuild \
  -project GoodEnough/GoodEnough.xcodeproj \
  -scheme GoodEnough \
  -configuration Debug \
  build
```

The app is configured as a menu bar utility with `LSUIElement`, so it does not show a normal Dock icon.

## Project Structure

```text
GoodEnough/
  GoodEnough.xcodeproj
  GoodEnough/
    Models/
    State/
    Services/
    Views/
    Resources/
```

The numbered Markdown files in the repository are the product and implementation notes that shaped the MVP.

## Product Principles

- Bare minimum counts
- Built for desk days, work-from-home days, and screen-heavy days
- Low/no effort
- Under 60 seconds
- No setup, equipment, planning, or onboarding
- Calm copy
- No guilt language
- No reminders or notifications in the core product

## License

No license has been specified yet.
