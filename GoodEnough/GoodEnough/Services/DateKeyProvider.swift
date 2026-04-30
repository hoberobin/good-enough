import Foundation

struct DateKeyProvider {
    private var calendar: Calendar

    init(calendar: Calendar = .current) {
        var localCalendar = calendar
        localCalendar.timeZone = .current
        self.calendar = localCalendar
    }

    func todayKey() -> String {
        key(for: Date())
    }

    func key(for date: Date) -> String {
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let year = components.year ?? 0
        let month = components.month ?? 1
        let day = components.day ?? 1
        return String(format: "%04d-%02d-%02d", year, month, day)
    }

    func lastNDays(_ count: Int, endingAt endDate: Date = Date()) -> [String] {
        guard count > 0 else { return [] }

        return (0..<count).reversed().compactMap { offset in
            calendar.date(byAdding: .day, value: -offset, to: endDate).map(key(for:))
        }
    }
}
