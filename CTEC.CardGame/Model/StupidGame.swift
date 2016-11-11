//
//  StupidGame.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class StupidGame
{
    //Decleration Section
    internal var deck : PlayingCardDeck
    internal var wasteBasketofFire : [PlayingCard]
    internal var wasteBasketofVictory : [PlayingCard]
    internal var playingCard1 : PlayingCard
    internal var playingCard2 : PlayingCard
    internal var hasEnded : Bool
    internal var buttonClicked : Bool
    
    
    //inits
    init()
    {
        deck = PlayingCardDeck()
        wasteBasketofFire = [PlayingCard]()
        wasteBasketofVictory = [PlayingCard]()
        playingCard1 = PlayingCard()
        playingCard2 = PlayingCard()
        hasEnded = Bool()
        buttonClicked = Bool()
    }
 
    
    //methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        playingCard1 = ((deck.drawCard() as? PlayingCard)!)
        playingCard2 = ((deck.drawCard() as? PlayingCard)!)
        
        while(!hasEnded)
        {
            if(buttonClicked)
            {
                buttonClicked = false
                
                let removedCard1 = self.playingCard1
                let removedCard2 = self.playingCard2
                
                wasteBasketofFire.append(removedCard1, removedCard2)
                
                
                
                
            }
        }
    }
    
}
