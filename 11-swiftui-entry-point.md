# SwiftUI Entry Point

## Goal

Define the app clearly so Codex does not improvise the macOS structure.

## App Entry

Use SwiftUI `App` with `MenuBarExtra`.

Example implementation target:

```swift
import SwiftUI

@main
struct GoodEnoughApp: App {
    @StateObject private var store = AppStore()

    var body: some Scene {
        MenuBarExtra {
            PopoverView()
                .environmentObject(store)
                .onAppear {
                    store.checkForDateRollover()
                }
        } label: {
            MenuBarIconView()
                .environmentObject(store)
        }
        .menuBarExtraStyle(.window)
    }
}
```

## Notes

- `.menuBarExtraStyle(.window)` allows a richer SwiftUI popover-like interface.
- If this causes compatibility issues, use default MenuBarExtra style.
- The app should not require a primary window for MVP.

## Hide Dock Icon

To make it feel like a true menu bar app, set:

```text
Application is agent (UIElement) = YES
```

In Info.plist this is:

```xml
<key>LSUIElement</key>
<true/>
```

If Codex cannot safely configure this, it can be left for a manual Xcode setting.
