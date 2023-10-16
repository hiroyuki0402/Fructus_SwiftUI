//
//  FructusApp.swift
//  Fructus
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/16.
//

import SwiftUI

@main
struct FructusApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
