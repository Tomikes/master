//
//  masterItemAnimationProtocol.swift
//  master
//
//  Created by apple on 15/7/29.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

import UIKit
import Foundation

protocol masterItemAnimationProtocol {
    
    func playAnimation(icon: UIImageView, textLabel: UILabel)
    func deselectAnimation(icon : UIImageView, textLabel : UILabel, defaultTextColor : UIColor)
    func selectedState(icon: UIImageView, textLabel: UILabel)
}




class masterItemAnimation: NSObject, masterItemAnimationProtocol {
    @IBInspectable var duration : CGFloat = 0.5
    @IBInspectable var textSelectedColor: UIColor = UIColor.blackColor()
    @IBInspectable var iconSelectedColor: UIColor!
    
    func playAnimation(icon : UIImageView, textLabel : UILabel) {
    }
    
    func deselectAnimation(icon : UIImageView, textLabel : UILabel, defaultTextColor : UIColor) {
    }
    
    func selectedState(icon: UIImageView, textLabel : UILabel) {
    }
    
    
}
