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
    
    @IBOutlet weak var overallTestingPercentageProgressView: UIProgressView!
    @IBOutlet weak var standardTestPercentageProgressView: UIProgressView!
    @IBOutlet weak var speedTestPercentageProgressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Styling for progress bars
        overallTestingPercentageProgressView.layer.cornerRadius = 7
        overallTestingPercentageProgressView.clipsToBounds = true
        overallTestingPercentageProgressView.layer.sublayers![1].cornerRadius = 7
        overallTestingPercentageProgressView.subviews[1].clipsToBounds = true
        
        standardTestPercentageProgressView.layer.cornerRadius = 2
        standardTestPercentageProgressView.clipsToBounds = true
        standardTestPercentageProgressView.layer.sublayers![1].cornerRadius = 2
        standardTestPercentageProgressView.subviews[1].clipsToBounds = true
        
        speedTestPercentageProgressView.layer.cornerRadius = 2
        speedTestPercentageProgressView.clipsToBounds = true
        speedTestPercentageProgressView.layer.sublayers![1].cornerRadius = 2
        speedTestPercentageProgressView.subviews[1].clipsToBounds = true
    }
    
    
}
