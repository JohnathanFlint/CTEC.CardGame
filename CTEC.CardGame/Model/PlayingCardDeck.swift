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
    lazy var cards = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
    }
    
    func huffleDeck() -> Void
    {
        
    }
    
    func orderDeck() -> Void
    {
        
    }
}
