//
//  UIViewExtensions.swift
//  FadeExtensionDemo
//
//  Created by vagner cazarotto on 7/9/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func fadeOut(duration: NSTimeInterval, delay: NSTimeInterval, completion: ((finished: Bool) -> Void)?){
        UIView.animateWithDuration(duration, delay: delay, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 0.0
        }, completion:completion)
    }
    
    func fadeIn(duration: NSTimeInterval, delay: NSTimeInterval, completion: ((finished: Bool) -> Void)?){
        UIView.animateWithDuration(duration, delay: delay, options:UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 1.0
            }, completion: completion)
    }
    
}
