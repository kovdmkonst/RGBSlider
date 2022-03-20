//
//  MainViewController.swift
//  RGBSlider
//
//  Created by Kovalyov Dmitry on 18.03.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColorValue(redValue: CGFloat, greenValue: CGFloat, blueValue: CGFloat)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
            settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColorValue(redValue: CGFloat, greenValue: CGFloat, blueValue: CGFloat) {
        self.view.backgroundColor = UIColor(displayP3Red: redValue,
                                       green: greenValue,
                                       blue: blueValue,
                                       alpha: 1)

    }


}
