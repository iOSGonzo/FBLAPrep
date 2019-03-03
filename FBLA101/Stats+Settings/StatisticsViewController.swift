//
//  StatisticsViewController.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/27/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class StatisticsViewController: UIViewController{
    
    //  Outlets for all dynamic UI Elements
    @IBOutlet weak var overallTestingPercentageProgressView: UIProgressView!
    @IBOutlet weak var totalTestTakenLabel: UILabel!
    @IBOutlet weak var flashcardSetsStudiedLabel: UILabel!
    @IBOutlet weak var videosWatchedLabel: UILabel!
    @IBOutlet weak var overallTestingPercentageLabel: UILabel!
    
    //current progress on progress bar, and amount of sections
    let currentProgress = Progress(totalUnitCount: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //  Styling for progress bars
        overallTestingPercentageProgressView.layer.cornerRadius = 7
        overallTestingPercentageProgressView.clipsToBounds = true
        overallTestingPercentageProgressView.layer.sublayers![1].cornerRadius = 7
        overallTestingPercentageProgressView.subviews[1].clipsToBounds = true
        
    }
    
    
    //updates the overall percentage and its meter
    override func viewDidAppear(_ animated: Bool) {

        globalTestPercentage = Int64((globalTotalPoints/globalTotalPointsPossible) * 100)
        
        totalTestTakenLabel.text = String(globalTestsTaken)
        flashcardSetsStudiedLabel.text = String(globalFlashcardsStudied)
        videosWatchedLabel.text = String(globalVideosWatched)
        
        self.currentProgress.completedUnitCount = globalTestPercentage
        let progressFloat = Float(self.currentProgress.fractionCompleted)
        self.overallTestingPercentageProgressView.setProgress(progressFloat, animated: true)
        
        overallTestingPercentageLabel.text = String(globalTestPercentage) + "%"
    }
    
    //when reset button is tapped is resets all stats
    @IBAction func resetButtonPressed(_ sender:UIButton){
        
        sender.pulsate()
        
        globalTestsTaken = 0
        globalFlashcardsStudied = 0
        globalVideosWatched = 0

        globalTotalPointsPossible = 0.001
        globalTotalPoints = 0.001
        globalTestPercentage = 1
        
        globalTestPercentage = Int64((globalTotalPoints/globalTotalPointsPossible) * 100)
        
        totalTestTakenLabel.text = String(globalTestsTaken)
        flashcardSetsStudiedLabel.text = String(globalFlashcardsStudied)
        videosWatchedLabel.text = String(globalVideosWatched)
        
        self.currentProgress.completedUnitCount = globalTestPercentage
        let progressFloat = Float(self.currentProgress.fractionCompleted)
        self.overallTestingPercentageProgressView.setProgress(progressFloat, animated: true)
        
        
        overallTestingPercentageLabel.text = String(globalTestPercentage) + "%"
    }
}
