//
//  SCDataModel.swift
//  Simple Counter
//
//  Created by Gabriel Mesquita on 2018-09-29.
//  Copyright © 2018 Gabriel Mesquita. All rights reserved.
//

import Foundation

class SCDataModel {
    
    var value: Int
    
    
    func increment(by amount: Int) {
        value = value + amount
    }
    
    
    
    init() {
        value = 0
    }
}
