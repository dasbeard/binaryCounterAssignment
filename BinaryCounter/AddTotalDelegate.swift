//
//  AddTotalDelegate.swift
//  BinaryCounter
//
//  Created by Das Beard on 2/16/17.
//  Copyright © 2017 dasBeard. All rights reserved.
//

import Foundation

protocol AddTotalDelegate: class {
    
    func addToTotal(num: Int)
    
    func subtractFromTotal(num: Int)
    
}
