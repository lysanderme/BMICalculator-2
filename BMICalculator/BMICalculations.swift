//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation



class BMICalculations {
    func calculateBmi(weight: Double, height: Double) -> Double {
        var metres: Double = height / 100.0
        metres = metres * metres
        
        let bmi = weight / metres
        
        return bmi.rounded(toPlaces: 1)
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        if bmi < 18.5 {
            return "Underweight"
        } else if bmi < 25.0 {
            return "Healthy"
        } else if bmi < 30.0 {
            return "Overweight"
        } else {
            return "Obese"
        }
    }
}

