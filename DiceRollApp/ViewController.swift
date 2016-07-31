//
//  ViewController.swift
//  DiceRollApp
//
//  Created by Fabio Pereira on 29/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dieTable:DieTable = DieTable()
    
    @IBOutlet weak var firstDieImageView:UIImageView!
    @IBOutlet weak var secondDieImageView:UIImageView!
    @IBOutlet weak var sumLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeDiceImages() {
        dieTable.rollDie(1)
        dieTable.rollDie(2)
        
        let firstDieImageName:String = String(format: "dice%d.png", dieTable.dieOne.getNumber())
        let secondDieImageName:String = String(format: "dice%d.png", dieTable.dieTwo.getNumber())

        firstDieImageView.image = UIImage(named: firstDieImageName)
        secondDieImageView.image = UIImage(named: secondDieImageName)
    }
    
    func changeDiceSum() {
        let diceSum:Int = dieTable.dieOne.getNumber() + dieTable.dieTwo.getNumber()
        let diceSumString:String = "Sum: " + String(diceSum)
        sumLabel.text = diceSumString
    }
    
    @IBAction func rollTapped(sender: UIButton) {
        self.changeDiceImages()
        self.changeDiceSum()
    }
    

}

