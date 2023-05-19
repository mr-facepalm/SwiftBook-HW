//
//  FirstViewController.swift
//  HW2.2
//
//  Created by Vladislav Maslov on 29.03.2023.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor.white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let setColoreVC = segue.destination as! SetColoreViewController
            setColoreVC.delegate = self
    }

}

extension FirstViewController: SetColoreViewControllerDelegate{
    func setColore(colore: UIColor) {
        view.backgroundColor = colore
    }
    
}
