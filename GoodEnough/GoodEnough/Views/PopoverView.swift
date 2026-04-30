import SwiftUI

struct PopoverView: View {
    @EnvironmentObject private var store: AppStore

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(alignment: .center) {
                Text("Good Enough")
                    .font(.headline)

                Spacer()
            }

            ChallengeCardView()

            HeatmapView(days: store.heatmapDays(count: 30))

            FooterView()
        }
        .padding(16)
        .frame(width: 320)
        .onAppear {
            store.checkForDateRollover()
        }
    }
}
