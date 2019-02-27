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
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      Styling for progress bar
        progressView.layer.cornerRadius = 8
        progressView.clipsToBounds = true
        progressView.layer.sublayers![1].cornerRadius = 8
        progressView.subviews[1].clipsToBounds = true
    }
    
    
    var isFlipped = false
    var currentFlashcard = 0
    let currentProgress = Progress(totalUnitCount: 10)
    
//  all flashcard images in array
    var frontImages = ["flashcardFrontDemo","flashcardFrontDemo2","flashcardFrontDemo3"]
    var backImages = ["flashcardBackDemo","flashcardBackDemo2","flashcardBackDemo3"]
    
//  flipping animation on flashcard tapped
    @IBAction func frontTapped(_ sender: Any){
        if isFlipped{
            isFlipped = false
            let img = UIImage(named: frontImages[currentFlashcard])
            cardIMG.setImage(img, for: .normal)
            UIView.transition(with: cardIMG, duration: 0.3, options: UIView.AnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
        } else{
            isFlipped = true
            let img = UIImage(named: backImages[currentFlashcard])
            cardIMG.setImage(img, for: .normal)
            UIView.transition(with: cardIMG, duration: 0.3, options: UIView.AnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    
    @IBAction func nextFlashcardTapped(_ sender: Any){
        
//      when next button is tapped, sets the current flashcard to + 1
        currentFlashcard = currentFlashcard + 1
        
//      sets flashcard front face to the next flashcard
        let img = UIImage(named: frontImages[currentFlashcard])
        cardIMG.setImage(img, for: .normal)
        
//      increases progress bar by 10%
        self.currentProgress.completedUnitCount += 1
        let progressFloat = Float(self.currentProgress.fractionCompleted)
        self.progressView.setProgress(progressFloat, animated: true)
        
    }
    
    
    
}
