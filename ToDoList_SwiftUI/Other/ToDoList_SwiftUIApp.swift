//
//  ToDoList_SwiftUIApp.swift
//  ToDoList_SwiftUI
//
//  Created by Александр Полочанин on 2.08.23.
//


import FirebaseCore
import SwiftUI

@main
struct ToDoList_SwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
