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
    
    fileprivate lazy var currentDeck = PlayingCardDeck()
    
    fileprivate lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
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
            currentDeck = PlayingCardDeck()
        }
    }
    
}
