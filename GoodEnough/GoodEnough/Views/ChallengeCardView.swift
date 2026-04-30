import AppKit
import SwiftUI

struct ChallengeCardView: View {
    @EnvironmentObject private var store: AppStore

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Today")
                .font(.caption)
                .foregroundStyle(.secondary)

            Text(store.getTodayEntry()?.challenge ?? "Take one slow breath.")
                .font(.title3)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)

            Button {
                store.completeToday()
                closePopoverAfterReward()
            } label: {
                Text(store.isTodayComplete ? "Done for today" : "That counts")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .disabled(store.isTodayComplete)

            if let feedback = store.feedbackMessage {
                Text(feedback)
                    .font(.callout)
                    .foregroundStyle(.secondary)
            } else if store.isTodayComplete {
                Text("Good enough.")
                    .font(.callout)
                    .foregroundStyle(.secondary)
            }
        }
    }

    private func closePopoverAfterReward() {
        guard store.isTodayComplete else { return }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            NSApp.keyWindow?.close()
        }
    }
}
