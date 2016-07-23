//
//  ZipCodeTextFieldDelegate.swift
//  TextFields
//
//  Created by vagner cazarotto on 7/23/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate:NSObject, UITextFieldDelegate{
 
    //override
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText =  newText.stringByReplacingCharactersInRange(range, withString: string)
        
        return newText.length <= 5
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}