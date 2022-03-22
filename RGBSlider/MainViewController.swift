//
//  MainViewController.swift
//  RGBSlider
//
//  Created by Kovalyov Dmitry on 18.03.2022.
//

import UIKit


class MainViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
    }
}

