//
//  Card.swift
//  CTEC.CardGame
//
//  Created by White, Nicholas on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class Card
{
    private var isFaceUp : Bool
    
    private var backImage : UIImage
    
    init()
    {
        isFaceUp = false
        backImage = UIImage(named: "cardback")!
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
  
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
    
}
