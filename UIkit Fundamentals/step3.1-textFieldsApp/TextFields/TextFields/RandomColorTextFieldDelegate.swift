//
//  RandomColorTextField.swift
//  TextFields
//
//  Created by vagner cazarotto on 7/23/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit


class RamdomColorTextFieldDelegate: NSObject , UITextFieldDelegate{
    // implement this function
    // func randomColor() -> UIColor{
    // todo: return a random color }
    
    
    // array os colors
    let colors = [UIColor.redColor(),
                  UIColor.orangeColor(),
                  UIColor.yellowColor(),
                  UIColor.greenColor(),
                  UIColor.blueColor(),
                  UIColor.purpleColor(),
                  UIColor.brownColor()];
    
    
    // chose a random nunber as the index
    func ramdomColor() -> UIColor{
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        textField.textColor = self.ramdomColor()
        return true
    }
    
    
    
}