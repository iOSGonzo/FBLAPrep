//
//  Results.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/1/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//empty string var for sharing option
var shareText = ""

class Results: UIViewController{

    //  Outlets for all dynamic UI Elements
    @IBOutlet weak var youScoredLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var resultsNavigationItem: UINavigationItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sets the score label to score achieved
        scoreLabel.text = String(currentScore)+"/"+String(maxPossibleScore)
        changeEmoji()
    }
    
    override func viewDidAppear(_ animated: Bool) {
       changeShareText()
    }
    
    //changes emoji's depending on what score was
    func changeEmoji(){
        if currentScore<3{
            emojiLabel.text = "😅"
        }else{
            emojiLabel.text = "🥳"
        }
    }
    
    //changes shareable text depending on what score was
    func changeShareText(){
        if currentScore<3{
            shareText = "I just got a score of " + scoreLabel.text! + " on FBLA101!😅"
        }else{
            shareText = "I just got a score of " + scoreLabel.text! + " on FBLA101!🥳"
        }
    }
    
    //instatiates activityController when the share button is pressed
    @IBAction func shareButtonPressed(_ sender: UIButton){
        sender.pulsate()
        let activityController = UIActivityViewController(activityItems: [shareText], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
}
