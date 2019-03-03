//
//  AnimatedTabBar.swift
//  FBLAPrep
//
//  Created by Gonzalo Birrueta on 2/26/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//
//  The job of this class is to animate the tab bar controller. It implements a settle bounce animation to
//  the tab bar item whenever a new tab is selected.

import Foundation
import UIKit


class AnimatedTabBar: UITabBarController{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemView = self.tabBar.subviews[2]
        
        
        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center
        
        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
        
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0{
            firstItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.firstItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 1{
            secondItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.secondItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 2{
            thirdItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.thirdItemImageView.transform = .identity
            }, completion: nil)
        }
    }
    
}
