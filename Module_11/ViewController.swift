//
//  ViewController.swift
//  Module_11
//
//  Created by Renat on 15.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = (sender.value * 100).rounded() / 100
        heightLabel.text = "\(roundedValue)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = Int((sender.value).rounded())
        weightLabel.text = "\(roundedValue)kg"
    }
}
