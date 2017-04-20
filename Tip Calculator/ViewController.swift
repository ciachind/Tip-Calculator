//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Owner on 4/19/17.
//  Copyright © 2017 Dave Ciachin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{

   
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    

    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    //properties
    var tipCalc = TipCalc(amountBeforeTax: 25.00, tipPercentage: 0.2)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        amountBeforeTaxTextField.text = String(format: "%0.2f", arguments: [tipCalc.amountBeforeTax])
        tipPercentageLabel.text = String(format: "Tip %d%%:", arguments: [Int(tipCalc.tipPercentage * 100)])
    }
    func calcTip()
    {
        tipCalc.tipPercentage = Float(tipPercentageSlider.value)
        tipCalc.amountBeforeTax = NSString(string: amountBeforeTaxTextField.text!).floatValue
        tipCalc.calculateTip()
        updateUI()
    }
    func updateUI()
    {
        resultLabel.text = String(format: "Total: $%0.2f Tip: $%0.2f", arguments: [tipCalc.totalAmount, tipCalc.tipAmount])
    }

    @IBAction func amountBeforeTaxTextFieldChanged(_ sender: Any)
    {
       calcTip()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == amountBeforeTaxTextField
        {
            textField.resignFirstResponder()
            calcTip()
        }
        return true
        }
}

