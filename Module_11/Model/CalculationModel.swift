import UIKit

struct CalculationModel {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat some snacks", color: UIColor.blue)
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are good, congrats", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Limit janky food in your life", color: UIColor.red)
        }
        
        
    }
    func decreaseDecimalPlaces(value: Float, numberOfPlaces: Int) -> Float {
        if numberOfPlaces == 0 {
           return value.rounded()
        } else {
            return (value * Float(numberOfPlaces)).rounded() / Float(numberOfPlaces)
        }
    }
}

