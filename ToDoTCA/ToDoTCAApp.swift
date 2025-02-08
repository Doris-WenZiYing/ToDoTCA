//
//  ToDoTCAApp.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import SwiftUI
import SwiftData

@main
struct ToDoTCAApp: App {
    
    let container: ModelContainer
    
    init() {
        do {
            container = try ModelContainer(for: Todo.self)
        } catch {
            fatalError("Failed to initialize SwiftData container: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(container)
        }
    }
}
