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
