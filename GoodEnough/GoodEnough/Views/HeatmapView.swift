import SwiftUI

struct HeatmapView: View {
    let days: [HeatmapDay]

    private let columns = Array(
        repeating: GridItem(.fixed(12), spacing: 4),
        count: 15
    )

    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading, spacing: 4) {
            ForEach(days) { day in
                DaySquareView(day: day)
            }
        }
        .accessibilityLabel("Last 30 days")
    }
}
