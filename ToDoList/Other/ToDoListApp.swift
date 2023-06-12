//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Hasan Safarli on 6/12/23.
//


import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
