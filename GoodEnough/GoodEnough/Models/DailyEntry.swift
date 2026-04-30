import Foundation

struct DailyEntry: Codable, Identifiable, Equatable {
    var id: String { dateKey }

    let dateKey: String
    let challenge: String
    let category: ChallengeCategory
    var status: DailyStatus
    var createdAt: Date
    var completedAt: Date?
}

enum DailyStatus: String, Codable {
    case incomplete
    case complete
    case skipped
}

enum ChallengeCategory: String, Codable, CaseIterable {
    case movement
    case eyes
    case breathing
    case deskReset = "desk-reset"
    case screenReset = "screen-reset"
    case tinyAdmin = "tiny-admin"
}
