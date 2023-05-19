//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by Vladislav Maslov on 24.03.2023.
//

import UIKit

class FinalViewController: UIViewController {
    
    var answersArray: [Answer] = []
    @IBOutlet var finalWinnerLable: UILabel!
    @IBOutlet var finalWinnerDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        let typeCounts = answersArray.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let mostCommonType = typeCounts.max { $0.1 < $1.1 }?.key
        
        finalWinnerLable.text = "Вы-\(mostCommonType?.rawValue ?? "🔥")!"
        finalWinnerDescription.text = mostCommonType?.definition
    }
    


    


}
