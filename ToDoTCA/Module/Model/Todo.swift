//
//  Todo.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct Todo {
  @ObservableState
  struct State: Equatable, Identifiable {
    var description = ""
    let id: UUID
    var isComplete = false
  }

  enum Action: BindableAction, Sendable {
    case binding(BindingAction<State>)
  }

  var body: some Reducer<State, Action> {
    BindingReducer()
  }
}
