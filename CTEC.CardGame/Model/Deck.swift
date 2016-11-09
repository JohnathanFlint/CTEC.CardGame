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
        var tempDeck = [Card]()
        
        while cards.count > 0
        {
            //Chooses a random valid index in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //removess the card from that spot from the deck. The dck dexreasses in count.
            let removedCard = cards.removeAtIndex(randomSpot)
            tempDeck.append(removedCard)
        }
        
        cards = tempDeck
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
