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
    @IBOutlet var label:UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCounter(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

