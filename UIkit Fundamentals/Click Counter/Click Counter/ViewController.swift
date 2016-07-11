//
//  ViewController.swift
//  Click Counter
//
//  Created by vagner cazarotto on 7/10/16.
//  Copyright © 2016 vagner cazarotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    var count = 0
    var label:UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        // the lavel view is associate with our existing view
        self.view.addSubview(label)
        self.label = label
        
        
        // Button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        // target action
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        // Decrement button
        let decButton = UIButton()
        decButton.frame = CGRectMake(150, 280, 120, 120)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decButton)
        decButton.addTarget(self, action: #selector(ViewController.decrementCounter), forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }

    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCounter(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

