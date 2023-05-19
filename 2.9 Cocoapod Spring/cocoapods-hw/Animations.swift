//
//  Animations.swift
//  cocoapods-hw
//
//  Created by Vladislav Maslov on 24.04.2023.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let dalay: Float
    
    var description: String {
        return """
        name: \(name)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        dalay: \(dalay)
        """
    }
    
    static func getRandomeAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...3),
            dalay: Float.random(in: 0.1...0.5)
        )
    }
    
}
