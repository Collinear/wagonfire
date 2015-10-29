//
//  Extensions.swift
//  wagonfire
//
//  Created by mpc on 10/29/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit

let LEFT   : Int = 0
let RIGHT  : Int = 1
let RANDOM : Int = 3


extension UIView {
    func startRotating(direction: Int, duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animationForKey(kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = 1
            
            if direction == LEFT {
                animate.fromValue = Float(M_PI * 2.0)
                animate.toValue = 0.0
            } else {
                animate.fromValue = 0.0
                animate.toValue = Float(M_PI * 2.0)
            }
            
            self.layer.addAnimation(animate, forKey: kAnimationKey)
        }
    }
    
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animationForKey(kAnimationKey) != nil {
            self.layer.removeAnimationForKey(kAnimationKey)
        }
    }
}