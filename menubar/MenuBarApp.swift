//
//  menubarApp.swift
//  menubar
//
//  Created by Wojciech Kulik on 01/07/2026.
//

import SwiftUI

@main
struct MenuBarApp: App {
    var body: some Scene {
        AppMenuBar()
        WindowGroup(id: "new-window") {
            ContentView()
        }
    }
}
