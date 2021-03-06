//
//  CardGameController.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardButton2: UIButton!
    
    
    fileprivate lazy var currentDeck = PlayingCardDeck()

    fileprivate lazy var clickCount = Int()

   
    private lazy var game : StupidGame = StupidGame()

    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
        
        game.startGame()
    }
    
    @IBAction func playButton(_ sender: UIButton)
    {
        game.playGame()
        cardButton.setTitle(game.hand[0].getCardData(), for : UIControlState.normal)
        cardButton2.setTitle(game.hand[1].getCardData(), for : UIControlState.normal)
        print(game.hand[0].getCardData() + "this is card 0")
          print(game.hand[1].getCardData() + "this is card 1")

        gameResults()
    }
  
    
    @IBAction func flipCard(_ sender: UIButton)
    {
        clickCount += 1
        let words = "The random card button has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton .setTitle("\(currentCard.getCardData())", for: UIControlState())
        }
        else
        {
            cardLabel.text = "The deck was exhausted - reinitializing"
            self.currentDeck = PlayingCardDeck()
        }
    }
    
    func gameResults() -> Void
    {
        //let hasWon = game.checkVictory()
        if(game.checkVictory() == true)
        {
            cardLabel.text = "You Won!"
        }
        //let hasLost = game.checkDefeat()
        else if(game.checkDefeat() == true)
        {
            cardLabel.text = "You Lost! :`("
        }
        else
        {
            cardLabel.text = "Never give up never give in!"
        }
    }
    
}
