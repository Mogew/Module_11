import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: Float?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmiValueUnwrapped = bmiValue else{return}
        resultLabel.text = "\((bmiValueUnwrapped * 10).rounded() / 10)"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
