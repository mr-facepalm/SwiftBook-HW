//
//  Menu.swift
//  2.10 UICollectionView
//
//  Created by Vladislav Maslov on 18.05.2023.
//

import Foundation
import UIKit

struct Product{
    var name: String
    var price: Float
    var image: UIImage
}

class Menu {
    var products = [Product]()
    init(){
        setup() 
    }
    func setup(){
        let p1 = Product(name: "Prodact1", price: 100, image: UIImage(named: "p1")!)
        let p2 = Product(name: "Prodact2", price: 200, image: UIImage(named: "p2")!)
        let p3 = Product(name: "Prodact3", price: 300, image: UIImage(named: "p3")!)
        let p4 = Product(name: "Prodact4", price: 400, image: UIImage(named: "p4")!)
        self.products = [p1,p2,p3,p4]
    }
}
