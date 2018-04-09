//
//  Concentration2.swift
//  Concentration2
//
//  Created by Shuhua Song on 4/4/18.
//  Copyright © 2018 Shuhua Song. All rights reserved.
//

import Foundation

class Concentration
{          //the eccential of this game:cards and touch a card(choose a card)
    var cards = [Card]()  //created an instance of a struct or of a class,an init     without argument and creat a empty array,an array is exist but no card there
    func chooseCard(at index: Int){    //API
        if cards[index].isFaceup{
            cards[index].isFaceup = false
        }else {
            cards[index].isFaceup = true
        }
    }
    
    init(numberOfPairsOfCards: Int){   //create our own init
        for _ in 1...numberOfPairsOfCards{     //countable range
            let card = Card(_)                                        //the card don't care the  identifier, it care about the unique
                      //card is a struct, make a copy to matchingCard
            cards += [card,card]
                  //put things in and out of a array, also means copy
        }
         //Shuffle the card
    }
    
}
