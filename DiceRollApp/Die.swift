//
//  File.swift
//  DiceRollApp
//
//  Created by user121090 on 7/30/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class Die {
  
    // The die number that will be rolled during the game
    var number:Int
    
    // Die number is initialized as '-1'
    init(){
       self.number = -1
    }
    
    // -- Setters --
    func setNumber(number:Int) {
        self.number = number
    }
    
    // -- Getters --
    func getNumber() -> Int {
        return(self.number)
    }
    
}
