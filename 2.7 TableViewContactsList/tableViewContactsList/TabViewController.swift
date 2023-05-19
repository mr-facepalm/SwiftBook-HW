//
//  TableVCTableViewController.swift
//  tableViewContactsList
//
//  Created by Vladislav Maslov on 05.04.2023.
//

import UIKit

class TabViewController: UITabBarController {
    
    let persons = Person.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController(with: persons)
    }

    private func setupViewController (with persons: [Person]) {
        let vc1 = viewControllers?.first as! UINavigationController
        let vc2 = viewControllers?.last as! UINavigationController
        let vc3 = vc1.topViewController as! shortPersonsTableViewController
        let vc4 = vc2.topViewController as! detailPersonsTableViewController
        
        vc3.persons = persons
        vc4.persons = persons
    }

}
