import SwiftUI

struct MenuBarIconView: View {
    @EnvironmentObject private var store: AppStore

    var body: some View {
        Image(systemName: store.isTodayComplete ? "square.fill" : "square")
            .symbolRenderingMode(.hierarchical)
            .accessibilityLabel(store.isTodayComplete ? "Good Enough complete" : "Good Enough incomplete")
    }
}
