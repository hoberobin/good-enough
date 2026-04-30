import Foundation

enum ChallengeBank {
    static let fallback = Challenge(
        text: "Take one slow breath.",
        category: .breathing
    )

    static let all: [Challenge] = [
        Challenge(text: "Stand up for 10 seconds.", category: .movement),
        Challenge(text: "Roll your shoulders once.", category: .movement),
        Challenge(text: "Stretch your arms overhead.", category: .movement),
        Challenge(text: "Take five steps away from your desk.", category: .movement),
        Challenge(text: "Touch your toes or reach toward them.", category: .movement),
        Challenge(text: "Shake out your hands.", category: .movement),
        Challenge(text: "Stand on one foot for 10 seconds.", category: .movement),
        Challenge(text: "Do one slow neck roll.", category: .movement),
        Challenge(text: "Walk to the nearest doorway and back.", category: .movement),
        Challenge(text: "Stretch your wrists for 10 seconds.", category: .movement),

        Challenge(text: "Look away from your screen for 20 seconds.", category: .eyes),
        Challenge(text: "Look at something far away.", category: .eyes),
        Challenge(text: "Close your eyes for 10 seconds.", category: .eyes),
        Challenge(text: "Blink slowly five times.", category: .eyes),
        Challenge(text: "Rest your eyes and breathe once.", category: .eyes),

        Challenge(text: "Take three slow breaths.", category: .breathing),
        Challenge(text: "Exhale longer than you inhale three times.", category: .breathing),
        Challenge(text: "Sit still for 20 seconds.", category: .breathing),
        Challenge(text: "Drop your shoulders and breathe once.", category: .breathing),
        Challenge(text: "Take one quiet pause.", category: .breathing),

        Challenge(text: "Move one thing on your desk.", category: .deskReset),
        Challenge(text: "Throw away one piece of clutter.", category: .deskReset),
        Challenge(text: "Straighten one object near you.", category: .deskReset),
        Challenge(text: "Wipe one small surface.", category: .deskReset),
        Challenge(text: "Put one thing back where it belongs.", category: .deskReset),

        Challenge(text: "Close one unused tab.", category: .screenReset),
        Challenge(text: "Hide one distracting window.", category: .screenReset),
        Challenge(text: "Clear one desktop item.", category: .screenReset),
        Challenge(text: "Quit one app you are not using.", category: .screenReset),
        Challenge(text: "Minimize everything except what matters.", category: .screenReset),

        Challenge(text: "Rename one messy file.", category: .tinyAdmin),
        Challenge(text: "Delete one unnecessary screenshot.", category: .tinyAdmin),
        Challenge(text: "Archive one old email.", category: .tinyAdmin),
        Challenge(text: "Reply to one tiny message.", category: .tinyAdmin),
        Challenge(text: "Write down the next thing you are doing.", category: .tinyAdmin)
    ]
}
