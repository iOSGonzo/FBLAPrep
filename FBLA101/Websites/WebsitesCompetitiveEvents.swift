//
//  [Website]CyberSecurity.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/11/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//website view with hypelinks that lead to actual websites.

class WebsitesCompetitiveEvents: UIViewController {

    @IBAction func Link1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/competitive-events/")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }
    
    @IBAction func Link2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/competitive-events/guidelines/")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }
    
    @IBAction func Link3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/media/Choosing-your-FBLA-competitive-event-2018.pdf")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }


    
}
