//
//  ViewCotroller.swift
//  Concentration2
//
//  Created by Shuhua Song on 3/25/18.
//  Copyright © 2018 Shuhua Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0{
        didSet{
            flipCountLable.text = "Flips:\(flipCount)"
        }
    }
    var emojiChoices=["👻","🎃","🦇","😸"]
 
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLable: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
        
    }
   
  
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6482954621, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
}


