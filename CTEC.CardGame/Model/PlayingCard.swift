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
        {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    
    internal var suit : String
        {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    internal var color : UIColor
        {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    internal var frontImage : UIImage
        {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    
    internal var backImage : UIImage
        {
        get
        {
            return self.backImage
        }
        set(backImage)
        {
            self.backImage = backImage
        }
    }
    
    override init()
    {
        super.init()
        //frontImage = UIImage(cardfront)
        color = UIColor.redColor()
        rank = 0
        suit = ""
        
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        //frontImage = UIImage(cardfront)
        color = UIColor.redColor()
        
        rank = withRank
        suit = ofSuit
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
        
        let description = "This playing card has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage), and is of \(suit) suit \(facing)"
        
        return description
    }
    
    func getRank() -> Int
    {
        return self.rank
    }
    
    func setRank(rank : Int)
    {
        self.rank = rank
    }
    
    //The mdoifier 'class' in front of the func means that this method is visible
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
