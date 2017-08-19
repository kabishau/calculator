//
//  ViewController.swift
//  Calculator
//
//  Created by Aleksey Kabishau on 0818..17.
//  Copyright © 2017 Dreamline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
    }
    
    // computed property that is tracking the display
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
        
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                //display.text = String(Double.pi)
                displayValue = Double.pi
            case "√":
                //let operand = Double(display.text!)!
                //display.text = String(sqrt(operand))
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
        
    }




}

