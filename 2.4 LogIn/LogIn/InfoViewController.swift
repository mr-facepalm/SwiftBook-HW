//
//  welcomeViewController.swift
//  LogIn
//
//  Created by Vladislav Maslov on 28.03.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var moreInfoText: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfoText.text =  "\(user.userLogin)"
//        tabBarController?.tabBar.tintColor = UIColor.white
        tabBarController?.tabBar.backgroundColor = UIColor.white
        
//        if let items = tabBarController?.tabBar.items {
//            for item in items {
//                item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
//            }
//        }
    }
    
    
}
