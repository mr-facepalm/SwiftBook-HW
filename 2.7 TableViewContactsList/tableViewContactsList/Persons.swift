//
//  Persons.swift
//  tableViewContactsList
//
//  Created by Vladislav Maslov on 31.03.2023.
//

import Foundation

struct Person{
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    static func getData() -> [Person] {
        var list: [Person] = []
            let dataManager = DataManager()
            for _ in 1...10 {
                let firstName = dataManager.firstNames.randomElement()!
                dataManager.firstNames.removeAll(where: { $0 == firstName })
                
                let lastName = dataManager.lastNames.randomElement()!
                dataManager.lastNames.removeAll(where: { $0 == lastName })
                
                let phone = dataManager.phones.randomElement()!
                dataManager.phones.removeAll(where: { $0 == phone })
                
                let email = dataManager.emails.randomElement()!
                dataManager.emails.removeAll(where: { $0 == email })
                
                list.append(Person(
                    firstName: firstName,
                    lastName: lastName,
                    phone: phone,
                    email: email)
                )
            }
            return list
    }
}

class DataManager {
    var firstNames: [String] = ["Olivia", "Ethan", "Ava", "Noah", "Charlotte", "Liam", "Amelia", "Mason", "Harper", "Elijah"]
    var lastNames: [String] = ["Smith", "Johnson", "Williams", "Brown", "Garcia", "Davis", "Martinez", "Rodriguez", "Hernandez", "Taylor"]
    var phones: [String] = ["8800-555-123-4567", "8800-555-234-5678", "8800-555-345-6789", "8800-555-456-7890", "8800-555-567-8901", "8800-555-678-9012", "8800-555-789-0123", "8800-555-890-1234", "8800-555-901-2345", "8800-555-012-3456"]
    var emails: [String] = ["john.doe@gmail.com", "jane_smith@yahoo.com", "johndoe88@hotmail.com", "jane-doe_123@outlook.com", "j.doe@protonmail.com", "janedoe+work@gmail.com", "johndoe123@icloud.com", "jane.doe@live.com", "john_doe123@aol.com", "jane-doe_88@yahoo.com"]
}
