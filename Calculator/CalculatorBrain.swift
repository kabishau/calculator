//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Aleksey Kabishau on 0821..17.
//  Copyright © 2017 Dreamline. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    // private?
    private var accumulator: Double?
    
    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            //display.text = String(Double.pi)
            accumulator = Double.pi
        case "√":
            if let operand = accumulator {
                accumulator = sqrt(operand)
            }
            
        default:
            break
        }
        
        
    }
    
    mutating func setOperand(_ operand: Double) {
        
        accumulator = operand
        
    }
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    
    
}
