//
//  Todo.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import Foundation
import SwiftData

@Model
final class Todo: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
    
    init(id: UUID = UUID(), title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    // Required for TCA state comparision
    static func == (lhs: Todo, rhs: Todo) -> Bool {
        lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.isCompleted == rhs.isCompleted
    }
}

struct ToDoState: Equatable {
    var todos: [Todo] = []
    var newTodoTitles: String = ""
}

enum ToDoAction: Equatable {
    case onAppear
    case todosLoaded(Result<[Todo], ToDoError>)
    case newTodoTitleChange(String)
    case addButtonTapped
    case delete(IndexSet)
    case toggleCompleted(Todo)
}

enum ToDoError: Error, Equatable {
    case generic(String)
}
