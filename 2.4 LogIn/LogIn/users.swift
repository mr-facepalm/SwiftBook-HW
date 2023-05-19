//
//  users.swift
//  LogIn
//
//  Created by Vladislav Maslov on 27.03.2023.
//

import Foundation

struct User {
    let userLogin: String
    var userPassword: String
    var userName: String
    
    static func getUserData() -> User {
        User(
            userLogin: "admin",
            userPassword: "admin",
            userName: "Polina Melnikova"
        )
    }
}

//var users: [User] = [polinaUser]
//let polinaUser = User(userLogin: "polina", userPassword: "admin", userName: "Polina Melnikova")
