import Foundation

struct ChallengeProvider {
    private let challenges: [Challenge]

    init(challenges: [Challenge] = ChallengeBank.all) {
        self.challenges = challenges
    }

    func challengeForToday(existingEntries: [DailyEntry]) -> Challenge {
        guard !challenges.isEmpty else {
            return ChallengeBank.fallback
        }

        let recentChallengeTexts = Set(
            existingEntries
                .sorted { $0.dateKey > $1.dateKey }
                .prefix(3)
                .map(\.challenge)
        )

        let candidates = challenges.filter { !recentChallengeTexts.contains($0.text) }
        return (candidates.isEmpty ? challenges : candidates).randomElement() ?? ChallengeBank.fallback
    }
}
