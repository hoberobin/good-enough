# Good Enough

Good Enough is a tiny macOS menu bar app that gives you one small daily challenge.

Open the menu bar popover, do the challenge, click **That counts**, and today's square fills in the 30-day heatmap. No accounts, no streak pressure, no notifications, no dashboard.

## What It Does

- Lives in the macOS menu bar
- Shows one simple challenge per local calendar day
- Lets you complete the day with one button
- Persists completion locally with `UserDefaults`
- Shows the last 30 days as a compact heatmap
- Uses a curated static challenge bank with basic recent-repeat avoidance

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

- One tiny thing per day
- Under 60 seconds
- No setup, equipment, or onboarding
- Calm copy
- No guilt language
- No reminders or notifications in the core product

## License

No license has been specified yet.
