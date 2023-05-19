//
//  PersonID.swift
//  tableViewContactsList
//
//  Created by Vladislav Maslov on 04.04.2023.
//

import UIKit

class PersonID: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = person.firstName
        phoneLable.text = person.phone
        emailLable.text = person.email
    }
}
