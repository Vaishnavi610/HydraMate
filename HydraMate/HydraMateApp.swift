//
//  HydraMateApp.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 14/03/24.
//

import SwiftUI

@main
struct HydraMateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
