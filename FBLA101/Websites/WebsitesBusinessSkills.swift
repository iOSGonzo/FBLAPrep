//
//  WebsitesBusinessSkills.swift
//  FBLA101
//
//  Created by Gonzalo Birrueta on 3/4/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//website view with hypelinks that lead to actual websites.

class WebsitesBusinessSkills: UIViewController {
    
    @IBAction func tapped(_ sender: UIButton){
        UIApplication.shared.open(URL(string: "https://simplicable.com/new/business-skills")! as URL, options: [:], completionHandler: nil)
        globalWebsitesVisited += 1

    }
    

    
}
