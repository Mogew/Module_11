import UIKit

class ResultViewController: UIViewController {
    
    var bmiST: CalculationModel?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmiSTUnwrapped = bmiST else{return}
        resultLabel.text = "\((bmiSTUnwrapped.bmi!.value * 10).rounded() / 10)"
        adviceLabel.text = bmiSTUnwrapped.bmi?.advice
        self.view.backgroundColor = bmiSTUnwrapped.bmi?.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
