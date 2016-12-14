//
//  PlayingCard.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    internal var frontImage : UIImage
        
    override init()
    {

        self.frontImage = UIImage(named:"cardfront")!
        self.color = UIColor.red

        self.color = UIColor.red

        self.rank = 0
        self.suit = ""
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {

        frontImage = UIImage(named: "cardfront")!
        color = UIColor.red
        color = UIColor.red
        rank = withRank
        suit = ofSuit
        super.init()
    }
    
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " is face up"
        }
        else
        {
            facing = " is face down"
        }
        
        let description = "This playing card has a face value of \(rank), a color of \(color) and is of \(suit) suit \(facing)"
        
        return description
    }
    
    func getRank() -> Int
    {
        return self.rank
    }
    
    func setRank(_ rank : Int)
    {
        self.rank = rank
    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
    
    //The modifier 'class' in front of the func means that this method is visible
    //Without creatin an instance of the class in question
    //This is a class method not an instance method
    class func validRanks() -> [String]
    {
        return ["??", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    
    class func maxRank() -> Int
        
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️", "♠️", "♦️", "♣️"]
    }
    
}
