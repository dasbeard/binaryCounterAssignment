//
//  CounterCell.swift
//  BinaryCounter
//
//  Created by Das Beard on 2/16/17.
//  Copyright © 2017 dasBeard. All rights reserved.
//

import UIKit

class CounterCell: UITableViewCell {
    
    
// Variables :::::::::::::::::::::::::::::::::::::::::::::::
    var addTotalDelegate: AddTotalDelegate?
    
    
    

// Actions and Outlets :::::::::::::::::::::::::::::::::::::::::::::::
    @IBAction func handleSubtractButtonPressed(_ sender: UIButton) {
        print("Minus Button Pressed")
        let toSubtract = model.value
        addTotalDelegate?.subtractFromTotal(num: toSubtract)
    }
   
    @IBAction func handleAddButtonPressed(_ sender: UIButton) {
        print("Add Button Pressed")
        let toAdd = model.value
        addTotalDelegate?.addToTotal(num: toAdd)

    }

    @IBOutlet weak var valueLabel: UILabel!
    
    
    
    
// Model :::::::::::::::::::::::::::::::::::::::::::::::
    private var _model: Counter?
    
    var model: Counter{        
        set{
            _model = newValue
            
            valueLabel.text = String(model.value)
         }
        
        get {
            return _model!
        }
    }
    
    
    

    
}
