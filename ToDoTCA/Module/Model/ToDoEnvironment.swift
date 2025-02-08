//
//  ToDoEnvironment.swift
//  ToDoTCA
//
//  Created by App_team on 2025/2/8.
//

import ComposableArchitecture
import SwiftData
import Foundation

struct ToDoEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    var persistenceClient: PersistenceClient
}

