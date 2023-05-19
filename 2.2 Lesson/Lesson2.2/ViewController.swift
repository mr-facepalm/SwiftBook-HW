//
//  ViewController.swift
//  Lesson2.2
//
//  Created by Vladislav Maslov on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var datePiker: UIDatePicker!
    @IBOutlet var switchForm: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: segmentedControl
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        // MARK: Lable
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        // MARK: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .green
        slider.thumbTintColor = .black
        // MARK: TextField
        textField.keyboardType = .numberPad
        // MARK: Button
        button.layer.cornerRadius = 10
        button.setTitle("Готово", for: .normal)
        // MARK: Date Picker
    }

    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Main Lable in 0 CASE"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Main Lable in 1 CASE"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Main Lable in 2 CASE"
            mainLabel.textColor = .white
        default:
            break
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        mainLabel.text = text
    }
    
    @IBAction func datePiker(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        mainLabel.text = dateFormatter.string(from: datePiker.date)
    }
    @IBAction func toggleElements(_ sender: Any) {
        segmentedControl.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        button.isHidden = !switchForm.isOn
        datePiker.isHidden = !switchForm.isOn
    }
}
