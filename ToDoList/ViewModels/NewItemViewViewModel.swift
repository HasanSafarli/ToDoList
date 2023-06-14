//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Hasan Safarli on 6/13/23.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
