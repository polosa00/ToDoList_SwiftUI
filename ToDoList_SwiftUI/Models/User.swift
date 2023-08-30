//
//  User.swift
//  ToDoList_SwiftUI
//
//  Created by Александр Полочанин on 3.08.23.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
