import SwiftUI

struct AppMenuBar: Scene {
    @Environment(\.openWindow) var openWindow

    var body: some Scene {
        MenuBarExtra {
            Button("Open") {
                openWindow(id: "new-window")
                NSApp.yieldActivation(to: NSRunningApplication.current)
                DispatchQueue.main.async {
                    NSApp.activate()
                }
            }

            Button("Open ignoring other apps") {
                openWindow(id: "new-window")
                NSApp.activate(ignoringOtherApps: true)
            }

            Button("Quit") {
                NSApp.terminate(nil)
            }.keyboardShortcut("q")
        } label: {
            Image(systemName: "bolt")
        }
    }
}
