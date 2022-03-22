//
//  ViewController.swift
//  RGBSlider
//
//  Created by Kovalyov Dmitry on 11.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        redTextField.text = String(format: "%.2f", redSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func changeTextFieldsText(_ sender: UISlider) {
        
        changeViewColor()
        
        switch sender {
        case redSlider:  redTextField.text = String(format: "%.2f", redSlider.value)
        case greenSlider: greenTextField.text = String(format: "%.2f", greenSlider.value)
        default: blueTextField.text = String(format: "%.2f", blueSlider.value)

        }
    }
    
    private func changeViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0)
    }
    
    
}

