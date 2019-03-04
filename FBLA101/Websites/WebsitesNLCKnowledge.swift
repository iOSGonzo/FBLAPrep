//
//  WebsitesNLCKnowledge.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/3/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//website view with hypelinks that lead to actual websites.

class WebsitesNLCKnowledge: UIViewController {
    
    
    @IBAction func Link2(_ sender: Any) {
    UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/conferences/nlc/")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }
    
    
    
}
