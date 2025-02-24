//
//  TodoView.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import SwiftUI
import ComposableArchitecture

struct TodoView: View {
  @Bindable var store: StoreOf<Todo>

  var body: some View {
    HStack {
      Button {
        store.isComplete.toggle()
      } label: {
        Image(systemName: store.isComplete ? "checkmark.square" : "square")
      }
      .buttonStyle(.plain)

      TextField("Untitled Todo", text: $store.description)
    }
    .foregroundColor(store.isComplete ? .gray : nil)
  }
}
