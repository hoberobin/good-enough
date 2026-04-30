import SwiftUI

struct DaySquareView: View {
    let day: HeatmapDay

    var body: some View {
        RoundedRectangle(cornerRadius: 2, style: .continuous)
            .fill(day.isComplete ? Color.green.opacity(0.82) : Color.secondary.opacity(0.18))
            .frame(width: 10, height: 10)
            .overlay {
                if day.isToday {
                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                        .stroke(day.isComplete ? Color.green : Color.secondary.opacity(0.55), lineWidth: 1)
                }
            }
            .accessibilityLabel("\(day.dateKey), \(day.isComplete ? "complete" : "incomplete")")
    }
}
