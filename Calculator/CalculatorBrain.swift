//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Aleksey Kabishau on 0821..17.
//  Copyright © 2017 Dreamline. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    func performOperation(_ symbol: String) {
        
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
