//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dannyyyyyyy Zhao on 3/27/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        /*
        if let safeBMI = bmi {
            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
            return bmiTo1DecimalPlace
        } else {
            return "0.0"
        }
        */
        // same as above
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height: Float, weight:Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            //print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            //print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        } else {
            //print("overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
    
    
}
