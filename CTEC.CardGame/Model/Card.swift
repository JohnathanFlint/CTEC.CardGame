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
    
<<<<<<< HEAD
    fileprivate var backImage : UIImage
=======
>>>>>>> origin/master
    
    init()
    {
        isFaceUp = false
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
