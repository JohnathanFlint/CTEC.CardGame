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
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()
    private lazy var game : StupidGame = StupidGame()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
        
        game.startGame()
        game.checkMatch()
        game.checkVictory()
        game.checkDefeat()
        
    }
    
    
    @IBAction func playButton(sender: UIButton)
    {
        game.playGame()
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The random card button has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton .setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The deck was exhausted - reinitializing"
            self.currentDeck = PlayingCardDeck()
        }
    }
    
    func gameResults() -> Void
    {
        let hasWon = game.hasWon
        if(hasWon == true)
        {
            cardLabel.text = "You Won!"
        }
        let hasLost = game.hasLost
        if(hasLost == true)
        {
            cardLabel.text = "You Lost! :-("
        }
    }
    
}