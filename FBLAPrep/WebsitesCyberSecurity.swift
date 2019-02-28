//
//  [Website]CyberSecurity.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/11/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class WebsitesCyberSecurity: UIViewController {
    
    @IBAction func Link1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.garykessler.net/library/crypto.html")! as URL, options: [:], completionHandler: nil)
    }
    
}
