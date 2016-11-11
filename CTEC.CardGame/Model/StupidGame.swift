//
//  StupidGame.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class StupidGame
{
    //Decleration Section
    internal var deck : PlayingCardDeck
    internal var wasteBasketofFire : PlayingCardDeck
    internal var playingCard1 : PlayingCard
    internal var playingCard2 : PlayingCard
    internal var hasEnded : Bool
    internal var buttonClicked : Bool
    
    
    //inits
    init()
    {
        deck = PlayingCardDeck()
        wasteBasketofFire = PlayingCardDeck()
        playingCard1 = PlayingCard()
        playingCard2 = PlayingCard()
        hasEnded = Bool()
        buttonClicked = Bool()
    }
 
    
    //methods
    func startGame() -> Void
    {
        
    }
}
