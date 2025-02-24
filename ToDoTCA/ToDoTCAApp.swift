//
//  ToDoTCAApp.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import SwiftUI
import ComposableArchitecture

@main
struct ToDoTCAApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState: Todos.State(todos: .mock)) {
                  Todos()
                }
              )
        }
    }
}
