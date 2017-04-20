//
//  TipCalc.swift
//  Tip Calculator
//
//  Created by Owner on 4/20/17.
//  Copyright © 2017 Dave Ciachin. All rights reserved.
//

import Foundation

class TipCalc
{
    var tipAmount: Float = 0
    var amountBeforeTax: Float = 0
    var tipPercentage: Float = 0
    var totalAmount: Float = 0
    
    init(amountBeforeTax: Float, tipPercentage: Float)
    {
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip()
    {
      tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
}
