//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by David Cleres on 02/01/2020.
//  Copyright © 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
            
        /*diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rightDiceNumber]*/
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        /*leftDiceNumber += 1 // changes the displayed dice at each press event.
        rightDiceNumber -= 1*/
        
        print("leftDiceNumber at the end = \(leftDiceNumber)")
        print("rightDiceNumber at the end = \(leftDiceNumber)")
    }
}

