//
//  CoffeeMachine.swift
//  Coffee machine
//
//  Created by Yaroslav Koniukvoh on 12.04.2020.
//  Copyright © 2020 Yaroslav Koniukvoh. All rights reserved.
//

import Foundation

class CoffeeMachine {
    var water: Int = 12
    var beans: Int = 8
    var milk: Int = 6
    
    init(water: Int,
         beans: Int,
         milk: Int)  {
        self.water = water
        self.beans = beans
        self.milk = milk
    }
}
