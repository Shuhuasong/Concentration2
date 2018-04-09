//
//  ViewCotroller.swift
//  Concentration2
//
//  Created by Shuhua Song on 3/25/18.
//  Copyright © 2018 Shuhua Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   lazy  var game = Concentration(numberOfPairsOfCards: (cardButtons.count+1) / 2) //get a free init without argument,response to green big arrow

    var flipCount = 0{
        didSet{
            flipCountLable.text = "Flips:\(flipCount)"
        }
    }
   
 
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLable: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
       
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in cardButtons")
        }
        
    }
   
    func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceup{
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.9959436059, green: 0.9896478057, blue: 1, alpha: 0) : #colorLiteral(red: 1, green: 0.6482954621, blue: 0, alpha: 1)
                   }
            }
        
    
        }
     var emojiChoices = ["🦇","👻","🎃","👿","😾","🤡","👹","👺","🤖","🐸","🐼","🐒"]
    
    func emoji(for card:Card) ->String {
        return "?"
    }
    
    }

    
    /*func flipCard(withEmoji emoji: String, on button: UIButton){
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6482954621, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
 
    }
 */
    


