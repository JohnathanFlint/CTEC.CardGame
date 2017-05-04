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
    fileprivate var isFaceUp : Bool
    
fileprivate var backImage : UIImage

    
    init()
    {
        isFaceUp = false
        self.backImage = UIImage(named:"cardback")!
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
  
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(_ isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
    
}
