//
//  PersistenceClient.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import Foundation
import SwiftData
import SwiftUI
//
//struct PersistenceClient {
//    let modelContext: ModelContext
//    
//    func fetchTodos() async throws -> [Todo] {
//        let descriptor = FetchDescriptor<Todo>()
//        return try modelContext.fetch(descriptor)
//    }
//    
//    // MARK: CRUD
//    
//    func addTodo(title: String, isComplete: Bool) async throws -> Todo {
//        let newTodo = Todo(title: title, isCompleted: isComplete)
//        modelContext.insert(newTodo)
//        try modelContext.save()
//        return newTodo
//    }
//    
//    func deleteTodos(at offset: IndexSet, todos: [Todo]) async throws {
//        for index in offset {
//            let todo = todos[index]
//            modelContext.delete(todo)
//        }
//        try modelContext.save()
//    }
//    
//    func toggleCompleted(todo: Todo) async throws -> Todo {
//        todo.isCompleted.toggle()
//        try modelContext.save()
//        return todo
//    }
//}
