//
//  ViewController.swift
//  HelloWorld
//
//  Created by Vagner Cazarotto on 2/22/17.
//  Copyright © 2017 Vagner Cazarotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var titleImage: UIImageView!
    
    @IBOutlet weak var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    @IBAction func welcomePress(_ sender: Any) {
        background.isHidden = false
        titleImage.isHidden = false
        welcomeButton.isHidden = true
        
    }
    
    

}

