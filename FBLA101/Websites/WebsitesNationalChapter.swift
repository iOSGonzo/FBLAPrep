//
//  WebsitesNationalChapter.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/4/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//website view with hypelinks that lead to actual websites.

class WebsitesNationalChapter: UIViewController {
    
    @IBAction func LinkNationalChapter(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/officers/")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1
    }
    
}

