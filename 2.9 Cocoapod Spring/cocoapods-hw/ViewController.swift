//
//  ViewController.swift
//  cocoapods-hw
//
//  Created by Vladislav Maslov on 24.04.2023.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var paramView: SpringView!
    @IBOutlet weak var paramLable: UILabel!
    private var animation = Animation.getRandomeAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        paramView.animation = animation.name
        paramView.curve = animation.curve
        paramView.force = CGFloat(animation.force)
        paramView.duration = CGFloat(animation.duration)
        paramView.delay = CGFloat(animation.dalay)
        paramView.animate()
        
        paramLable.text = animation.description
        
        animation = Animation.getRandomeAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
        
    }
    

}

