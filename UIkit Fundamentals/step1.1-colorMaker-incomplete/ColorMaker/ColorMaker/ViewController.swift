//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: Float = self.redControl.value
        let cgfr: CGFloat = CGFloat(r)
        let g: Float = self.greenControl.value
        let cgfg: CGFloat = CGFloat(g)
        let b: Float = self.blueControl.value
        let cgfb: CGFloat = CGFloat(b)
                
        colorView.backgroundColor = UIColor(red: cgfr, green: cgfg, blue: cgfb, alpha: 1)
    }
}

