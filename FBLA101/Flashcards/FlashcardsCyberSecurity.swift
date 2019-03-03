//
//  FlashcardsCyberSecurity.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/10/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class FlashcardsCyberSecurity: UIViewController{
    
    //  Outlets for all dynamic UI Elements
    @IBOutlet weak var disclaimerWindow: UIVisualEffectView!
    @IBOutlet weak var cardIMG: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var retryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardIMG.isUserInteractionEnabled = true
        nextButton.isUserInteractionEnabled = true

//      Styling for progress bar
        progressView.layer.cornerRadius = 7
        progressView.clipsToBounds = true
        progressView.layer.sublayers![1].cornerRadius = 7
        progressView.subviews[1].clipsToBounds = true
        
        
//      set flashcard face to currentFlashcard (first card) on viewDidLoad()
        let img = UIImage(named: frontImages[currentFlashcard])
        cardIMG.setImage(img, for: .normal)
    }
    
//  isFlipped stores whether the current card is flipped or not
    var isFlipped = false
    
//  currentFlashcard stores the index of the current flashcard
    var currentFlashcard = 0
    
//  currentProgress stores the amount of parts the progress bar is split into, as well as the current progress the bar is at
    let currentProgress = Progress(totalUnitCount: 10)
    
//  all flashcard images in array
    var frontImages = ["FCFrontCyber0","FCFrontCyber1","FCFrontCyber2","FCFrontCyber3","FCFrontCyber4","FCFrontCyber5","FCFrontCyber6","FCFrontCyber7","FCFrontCyber8","FCFrontCyber9","FCEnd"]
    var backImages = ["FCBackCyber0","FCBackCyber1","FCBackCyber2","FCBackCyber3","FCBackCyber4","FCBackCyber5","FCBackCyber6","FCBackCyber7","FCBackCyber8","FCBackCyber9","FCEnd"]
    
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
    
    
    @IBAction func nextFlashcardTapped(_ sender: UIButton){
        if currentFlashcard < 9{
            
            //button spring animation, derives from ButtonAnimations.swift
            sender.pulsate()
            
            //      sets isFlipped to false, meaning the back side isn't showing when we transition to the next card
            isFlipped = false
            
            //      when next button is tapped, sets the current flashcard to + 1
            currentFlashcard = currentFlashcard + 1
            
            //      sets flashcard front face to the next flashcard
            let img = UIImage(named: frontImages[currentFlashcard])
            cardIMG.setImage(img, for: .normal)
            
            //      increases progress bar by 10%
            self.currentProgress.completedUnitCount += 1
            let progressFloat = Float(self.currentProgress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
            
            
        } else if currentFlashcard == 9{
            
            //      sets isFlipped to false, meaning the back side isn't showing when we transition to the next card
            isFlipped = false
            
            //      when next button is tapped, sets the current flashcard to + 1
            currentFlashcard = currentFlashcard + 1
            
            //      sets flashcard front face to the next flashcard
            let img = UIImage(named: frontImages[currentFlashcard])
            cardIMG.setImage(img, for: .normal)
            
            //      increases progress bar by 10%
            self.currentProgress.completedUnitCount += 1
            let progressFloat = Float(self.currentProgress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
            
            nextButton.isHidden = true
            retryButton.isHidden = false
            cardIMG.isUserInteractionEnabled = false
            
            globalFlashcardsStudied += 1
        }

        
    }
    
    //when retry button is tapped, reset the card set back to normal, as well as the progress bar.
    @IBAction func retryButtonTapped(_ sender: UIButton){
        cardIMG.isUserInteractionEnabled = true
        retryButton.isHidden = true
        nextButton.isHidden = false
        isFlipped = false
        currentFlashcard = 0
        let img = UIImage(named: frontImages[currentFlashcard])
        cardIMG.setImage(img, for: .normal)
        self.currentProgress.completedUnitCount = 0
        let progressFloat = Float(self.currentProgress.fractionCompleted)
        self.progressView.setProgress(progressFloat, animated: true)
    }
}
