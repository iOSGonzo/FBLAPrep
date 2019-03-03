//
//  Video.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/17/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

//video initializer
class Video{
    var image: UIImage
    var url: String
    var title: String
    
    init(image: UIImage, url: String, title: String){
        self.image = image
        self.url = url
        self.title = title
    }
}
