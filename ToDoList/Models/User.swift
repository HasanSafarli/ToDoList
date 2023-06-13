//
//  User.swift
//  ToDoList
//
//  Created by Hasan Safarli on 6/13/23.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
