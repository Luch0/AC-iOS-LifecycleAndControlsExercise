//
//  SettingsViewController.swift
//  LifecycleControls
//
//  Created by Luis Calle on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperValueLabel: UILabel!
    
    var currentStepperValue: Int = 0 {
        didSet {
            stepperValueLabel.text = String(currentStepperValue)
            Settings.maxNumberOfRows = currentStepperValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.maximumValue = Double(Song.loveSongs.count)
        stepperValueLabel.text = "0"
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        currentStepperValue = Int(stepper.value)
    }
    
}
