//
//  ViewController.swift
//  Module_11
//
//  Created by Renat on 15.04.2023.
//

import UIKit

class CalculationViewController: UIViewController {
    
    var bmi: Float? = nil
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!

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
    
    @IBAction func calculationPressed(_ sender: UIButton) {
        let bmi = weightSlider.value / (heightSlider.value * heightSlider.value)
        self.bmi = bmi
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            guard let resultVC = segue.destination as? ResultViewController else {return}
            resultVC.bmiValue = bmi
        }
    }
}
