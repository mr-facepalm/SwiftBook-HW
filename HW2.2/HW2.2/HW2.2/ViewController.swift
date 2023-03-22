//
//  ViewController.swift
//  HW2.2
//
//  Created by Vladislav Maslov on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coloreVeiw: UIView!
    
    @IBOutlet var redColoreInt: UILabel!
    @IBOutlet var greenColoreInt: UILabel!
    @IBOutlet var blueColoreInt: UILabel!
    
    @IBOutlet var redColoreSlider: UISlider!
    @IBOutlet var greenColoreSlider: UISlider!
    @IBOutlet var blueColoreSlider: UISlider!
    
    var redValue = CGFloat(0)
    var greenValue = CGFloat(0)
    var blueValue = CGFloat(0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloreVeiw.layer.cornerRadius = 25
        
        redColoreSlider.minimumValue = 0
        redColoreSlider.maximumValue = 255
        redColoreSlider.minimumTrackTintColor = .red
        
        greenColoreSlider.minimumValue = 0
        greenColoreSlider.maximumValue = 255
        greenColoreSlider.minimumTrackTintColor = .green
        
        blueColoreSlider.minimumValue = 0
        blueColoreSlider.maximumValue = 255
        blueColoreSlider.minimumTrackTintColor = .blue
        
        
    }
    
    func updateColor() {
        coloreVeiw.backgroundColor = UIColor(
            red: CGFloat(redColoreSlider.value) / 255,
            green: CGFloat(greenColoreSlider.value) / 255,
            blue: CGFloat(blueColoreSlider.value) / 255,
            alpha: 1)
    }
    
    @IBAction func redColoreAction() {
        redColoreInt.text = String(Int(redColoreSlider.value))
        updateColor()
    }
    
    @IBAction func greenColoreAction() {
        greenColoreInt.text = String(Int(greenColoreSlider.value))
        updateColor()
    }
    
    @IBAction func blueColoreAction() {
        blueColoreInt.text = String(Int(blueColoreSlider.value))
        updateColor()
    }

}

