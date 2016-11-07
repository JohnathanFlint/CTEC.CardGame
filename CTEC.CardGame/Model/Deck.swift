//
//  Deck.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class Deck
    
{
    lazy var cards = [Card]() 
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        
    }
}
