//
//  WebsitesHistory.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/3/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//website view with hypelinks that lead to actual websites.

class WebsitesHistory: UIViewController {
    
    @IBAction func LinkHistory(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/about/history/")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }

}
