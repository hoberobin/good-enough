import Foundation

final class GoodEnoughStorage {
    private enum Keys {
        static let entries = "goodEnough.entries"
    }

    private let defaults: UserDefaults
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    func loadEntries() -> [DailyEntry] {
        guard let data = defaults.data(forKey: Keys.entries) else {
            return []
        }

        do {
            return try decoder.decode([DailyEntry].self, from: data)
        } catch {
            debugPrint("Good Enough: could not decode entries: \(error)")
            return []
        }
    }

    func saveEntries(_ entries: [DailyEntry]) {
        do {
            let sortedEntries = entries.sorted { $0.dateKey < $1.dateKey }
            let data = try encoder.encode(sortedEntries)
            defaults.set(data, forKey: Keys.entries)
        } catch {
            debugPrint("Good Enough: could not encode entries: \(error)")
        }
    }

}
