//
//  Card.swift
//  Concentration2
//
//  Created by Shuhua Song on 4/4/18.
//  Copyright © 2018 Shuhua Song. All rights reserved.
//

import Foundation

struct Card
{   // how the card behave, no emoji here, cause modle here is UI independent, emoji is just how youn display this card, it's UI component
    //a card need a unique identity to match with another card
    var isFaceup = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    static func getUniqueIdentifier()->Int {
        identifierFactory += 1  //produce unique identifier
        return Card.identifierFactory
    }
    
    init(identifier: Int){
        self.identifier = Card.getUniqueIdentifier()
    }
}
