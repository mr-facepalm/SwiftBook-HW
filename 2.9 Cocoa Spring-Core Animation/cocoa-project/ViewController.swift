//
//  ViewController.swift
//  cocoa-project
//
//  Created by Vladislav Maslov on 20.04.2023.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    @IBOutlet var springAnimationView: SpringView!
    
    private var originCoordinate: CGFloat?

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func coreAnimationButtonPressd(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]){ [weak self] in
            guard let self = self else { return }
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 10
            }
        }
    }
    @IBAction func springAnimationButtonPressd(_ sender: SpringButton) {
        springAnimationView.animation = "slideLeft"
        springAnimationView.duration = 1
        springAnimationView.curve = "easeIn"
        springAnimationView.animate()
        
        sender.animation = "shake"
        sender.animate()
    }
    
}

