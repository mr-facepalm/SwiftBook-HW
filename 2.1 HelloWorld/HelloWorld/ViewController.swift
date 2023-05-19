//
//  ViewController.swift
//  HelloWorld
//
//  Created by Vladislav Maslov on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textHere: UILabel!
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textHere.isHidden = true
        button.layer.cornerRadius = 25
    }

    @IBAction func makeButtonAction() {
        if textHere.isHidden{
            textHere.isHidden = false
            button.setTitle("Show", for: .normal)
        } else {
            textHere.isHidden = true
            button.setTitle("Hide", for: .normal)
        }
    }
    
}
