import Combine
import Foundation

@MainActor
final class AppStore: ObservableObject {
    @Published private(set) var entries: [DailyEntry]
    @Published var feedbackMessage: String?

    private let storage: GoodEnoughStorage
    private let challengeProvider: ChallengeProvider
    private let dateKeyProvider: DateKeyProvider
    private let feedbackMessages = ["Nice.", "Good enough.", "Counted.", "That's enough."]

    init(
        storage: GoodEnoughStorage = GoodEnoughStorage(),
        challengeProvider: ChallengeProvider = ChallengeProvider(),
        dateKeyProvider: DateKeyProvider = DateKeyProvider()
    ) {
        self.storage = storage
        self.challengeProvider = challengeProvider
        self.dateKeyProvider = dateKeyProvider
        self.entries = storage.loadEntries()

        ensureTodayExists()
    }

    var isTodayComplete: Bool {
        getTodayEntry()?.status == .complete
    }

    func ensureTodayExists() {
        let todayKey = dateKeyProvider.todayKey()

        guard !entries.contains(where: { $0.dateKey == todayKey }) else {
            return
        }

        let challenge = challengeProvider.challengeForToday(existingEntries: entries)
        let entry = DailyEntry(
            dateKey: todayKey,
            challenge: challenge.text,
            category: challenge.category,
            status: .incomplete,
            createdAt: Date(),
            completedAt: nil
        )

        entries.append(entry)
        saveEntries()
        feedbackMessage = nil
    }

    func completeToday() {
        ensureTodayExists()

        let todayKey = dateKeyProvider.todayKey()
        guard let index = entries.firstIndex(where: { $0.dateKey == todayKey }) else {
            return
        }

        guard entries[index].status != .complete else {
            feedbackMessage = feedbackMessage ?? "Good enough."
            return
        }

        entries[index].status = .complete
        entries[index].completedAt = Date()
        feedbackMessage = feedbackMessages.randomElement() ?? "Good enough."
        saveEntries()
    }

    func getTodayEntry() -> DailyEntry? {
        entries.first { $0.dateKey == dateKeyProvider.todayKey() }
    }

    func recentEntries(days: Int) -> [DailyEntry] {
        let keys = Set(dateKeyProvider.lastNDays(days))
        return entries
            .filter { keys.contains($0.dateKey) }
            .sorted { $0.dateKey < $1.dateKey }
    }

    func heatmapDays(count: Int = 30) -> [HeatmapDay] {
        let todayKey = dateKeyProvider.todayKey()
        var entriesByDate: [String: DailyEntry] = [:]
        for entry in entries {
            entriesByDate[entry.dateKey] = entry
        }

        return dateKeyProvider.lastNDays(count).map { dateKey in
            let entry = entriesByDate[dateKey]
            return HeatmapDay(
                dateKey: dateKey,
                isComplete: entry?.status == .complete,
                isToday: dateKey == todayKey
            )
        }
    }

    func checkForDateRollover() {
        ensureTodayExists()
    }

    private func saveEntries() {
        entries.sort { $0.dateKey < $1.dateKey }
        storage.saveEntries(entries)
    }
}
