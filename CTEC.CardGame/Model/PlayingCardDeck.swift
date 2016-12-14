//
//  PlayingCardDeck.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
    
{
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for index in 1...PlayingCard.maxRank()
            {
                let currentCard = PlayingCard(withRank: index, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
    }
    
    
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for rank in 1...PlayingCard.maxRank()
            {
                let index = cards.index
                {
                    ($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank
                }
                
                let tempCard = cards.remove(at: index!) as! PlayingCard
                temp.append(tempCard)
            }
        }
        
        cards = temp
    }
}
