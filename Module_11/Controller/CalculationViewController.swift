import UIKit

class CalculationViewController: UIViewController {
    
    var calculationBrain = CalculationModel()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = calculationBrain.decreaseDecimalPlaces(value: sender.value, numberOfPlaces: 100)
        heightLabel.text = "\(roundedValue)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = calculationBrain.decreaseDecimalPlaces(value: sender.value, numberOfPlaces: 0)
        weightLabel.text = "\(roundedValue)kg"
    }
    
    @IBAction func calculationPressed(_ sender: UIButton) {
        calculationBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            guard let resultVC = segue.destination as? ResultViewController else {return}
            resultVC.bmiST = calculationBrain
        }
    }
}
