//
//  DieTable.swift
//  DiceRollApp
//
//  Created by user121090 on 7/30/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class DieTable {
    
    // The Die Table contains two Dice
    var dieOne:Die
    var dieTwo:Die
    
    /*
        Both dices are initialized with their default constructors
        Each will hould die.number = -1 in the beginning
     */
    init() {
        self.dieOne = Die()
        self.dieTwo = Die()
    }
    
    // A die to be rolled is choosen and after that it saves the value (1,6)
    // to the selected dice
    func rollDie(whichOne:Int) {
        switch whichOne {
        case 1:
            self.dieOne.setNumber(Int(arc4random_uniform(6)) + 1)
        case 2:
            self.dieTwo.setNumber(Int(arc4random_uniform(6)) + 1)
        default:
            return
        }
    }
}