//
//  ViewController.swift
//  HW2.3
//
//  Created by Vladislav Maslov on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOne() {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    @IBAction func buttonTwo() {
        performSegue(withIdentifier: "addContact", sender: self)
    }
    
}

