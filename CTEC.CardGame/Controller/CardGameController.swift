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
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
}