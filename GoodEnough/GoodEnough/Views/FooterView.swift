import AppKit
import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack(spacing: 8) {
            Spacer()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
            .buttonStyle(.borderless)
            .font(.caption)
        }
    }
}
