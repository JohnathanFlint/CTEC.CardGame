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
    internal var hasWon : Bool
    internal var hasLost : Bool
    internal var buttonClicked : Bool
    internal var hand : [PlayingCard]
    internal var handSize : Int
   
    private lazy var controller : CardGameController = CardGameController()
    
    
    //inits
    init()
    {
        deck = PlayingCardDeck()
        hand = [PlayingCard]()
        wasteBasketofFire = [PlayingCard]()
        wasteBasketofVictory = [PlayingCard]()
        playingCard1 = PlayingCard()
        playingCard2 = PlayingCard()
        hasWon = Bool()
        buttonClicked = Bool()
        handSize = Int()
        hasLost = Bool()
    }
 
    
    //methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        hand.append((deck.drawCard() as? PlayingCard)!)
        hand.append((deck.drawCard() as? PlayingCard)!)
        
        checkMatch()
        checkVictory()
        checkDefeat()
       /* while(!hasEnded)
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
        }*/
    }
    
    func checkMatch() -> Bool
    {
       let hasMatch : Bool
        if((hand[0].rank == hand[1].rank) && (hand[0].suit == "♥️") && ( hand[1].suit == "♦️"))
        {
            hasMatch = true
        }
        else if((hand[0].rank == hand[1].rank) && (hand[0].suit == "♦️") && (hand[1].suit == "♥️"))
        {
            hasMatch = true
        }
        else if((hand[0].rank == hand[1].rank) && (hand[0].suit == "♣️") && (hand[1].suit == "♠️"))
        {
            hasMatch = true
        }
        else if((hand[0].rank == hand[1].rank) && (hand[0].suit == "♠️") && (hand[1].suit == "♣️"))
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        
        return hasMatch
    }
    
    func checkVictory() -> Bool
    {
        let hasWon : Bool
        if(checkMatch() == true)
        {
            hasWon = true
        }
        else
        {
            hasWon = false
        }
        return hasWon
    }
    
    func checkDefeat() -> Bool
    {
        let hasLost : Bool
        if((checkMatch() == false) && (deck.cards.count == 0))
        {
            hasLost = true
        }
        else
        {
            hasLost = false
        }
        return hasLost
    }
    
    func playGame() -> Void
    {
        if((checkVictory() != true) && (checkDefeat() != true))
        {
            hand.remove(at: 0)
            hand.remove(at: 0)
            hand.append((deck.drawCard() as? PlayingCard)!)
            hand.append((deck.drawCard() as? PlayingCard)!)
            
            checkMatch()
            checkVictory()
            checkDefeat()
           // controller.gameResults()
        }
        else
        {
            
        }
        
    }
    
    
}
