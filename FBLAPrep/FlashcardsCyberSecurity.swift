//
//  FlashcardsCyberSecurity.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/26/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class FlashcardsCyberSecurity: UIViewController{
    @IBOutlet weak var cardIMG: UIButton!
    
    var isFlipped = false
    
    
//  flipping animation on flashcard tapped
    @IBAction func frontTapped(_ sender: Any){
        if isFlipped{
            isFlipped = false
            let img = UIImage(named: "flashcardFrontDemo")
            cardIMG.setImage(img, for: .normal)
            UIView.transition(with: cardIMG, duration: 0.3, options: UIView.AnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
        } else{
            isFlipped = true
            let img = UIImage(named: "flashcardBackDemo")
            cardIMG.setImage(img, for: .normal)
            UIView.transition(with: cardIMG, duration: 0.3, options: UIView.AnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}
