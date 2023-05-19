//
//  tabsViewController.swift
//  LogIn
//
//  Created by Vladislav Maslov on 27.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var wellcomeMessege: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wellcomeMessege.text = "Welcome, \(user.userLogin)"
    }
    
    
}
