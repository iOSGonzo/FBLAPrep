//
//  ResultsCyberSecurity.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/1/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

var shareText = ""

class ResultsCyberSecurity: UIViewController{
    
    @IBOutlet weak var youScoredLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var resultsNavigationItem: UINavigationItem!
        @IBOutlet weak var colorRed: UILabel!
        @IBOutlet weak var colorGreen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(currentScore)+"/"+String(maxPossibleScore)
        changeEmoji()
    }
    
    override func viewDidAppear(_ animated: Bool) {
       changeShareText()
    }
    
    func changeEmoji(){
        if currentScore<3{
            emojiLabel.text = "😅"
        }else{
            emojiLabel.text = "🥳"
        }
    }
    
    func changeShareText(){
        if currentScore<3{
            shareText = "I just got a score of " + scoreLabel.text! + " on FBLA101!😅"
        }else{
            shareText = "I just got a score of " + scoreLabel.text! + " on FBLA101!🥳"
        }
    }
    
    @IBAction func shareButtonPressed(_ sender: UIButton){
        sender.pulsate()
        let activityController = UIActivityViewController(activityItems: [shareText], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
}
