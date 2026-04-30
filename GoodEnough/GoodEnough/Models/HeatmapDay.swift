import Foundation

struct HeatmapDay: Identifiable, Equatable {
    var id: String { dateKey }

    let dateKey: String
    let isComplete: Bool
    let isToday: Bool
}
