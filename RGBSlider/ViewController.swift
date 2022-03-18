//
//  ViewController.swift
//  RGBSlider
//
//  Created by Kovalyov Dmitry on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redColorValue: CGFloat = 0
    var greenColorValue: CGFloat = 0
    var blueColorValue: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        changeRedValue()
        changeBlueValue()
        changeGreenValue()
        
    }
    
    @IBAction func changeRedValue() {
        let redValue = redSlider.value * 255
        redTextField.text = String(Int(redValue))
        changeViewColor()

    }
    
    @IBAction func changeGreenValue() {
        let greenValue = greenSlider.value * 255
        greenTextField.text = String(Int(greenValue))
        changeViewColor()

    }
    
    @IBAction func changeBlueValue() {
        let blueValue = blueSlider.value * 255
        blueTextField.text = String(Int(blueValue))
        changeViewColor()
    }
    
    
    private func changeViewColor() {
        redColorValue = CGFloat(redSlider.value)
        greenColorValue = CGFloat(greenSlider.value)
        blueColorValue = CGFloat(blueSlider.value)
        
        colorView.layer.backgroundColor = CGColor(
            red: redColorValue,
            green: greenColorValue,
            blue: blueColorValue,
            alpha: 1.0)
    }
    
}

