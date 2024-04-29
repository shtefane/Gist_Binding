//
//  Gist_BindingApp.swift
//  Gist_Binding
//
//  Created by Stefan Balica on 24/04/2024.
//

import SwiftUI

@main
struct Gist_BindingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
