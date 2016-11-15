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
    internal var hand : [PlayingCard]
    internal var handSize : Int
    
    
    //inits
    init()
    {
        deck = PlayingCardDeck()
        hand = [PlayingCard]()
        wasteBasketofFire = [PlayingCard]()
        wasteBasketofVictory = [PlayingCard]()
        playingCard1 = PlayingCard()
        playingCard2 = PlayingCard()
        hasEnded = Bool()
        buttonClicked = Bool()
        handSize = Int()
    }
 
    
    //methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        
        while(!hasEnded)
        {
            if(buttonClicked)
            {
                buttonClicked = false
               
                for(handSize = 0; handSize < 2;)
                {
                    deck.drawCard()
                    hand.addAtIndex(0)
                }
                
            }
        }
    }
    
}
