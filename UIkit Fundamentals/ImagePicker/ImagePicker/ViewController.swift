//
//  ViewController.swift
//  ImagePicker
//
//  Created by vagner cazarotto on 7/14/16.
//  Copyright © 2016 vagner cazarotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func experiment(){
        print("Button pressed")
        
//        let image = UIImage()
//        let controler = UIActivityViewController(activityItems: [image], applicationActivities: nil)
//        self.presentViewController(controler, animated: true, completion: nil)
        
        
        let controller = UIAlertController()
        controller.title = "title for alert controller"
        controller.message = "This is a test"
        
        // clojure expression to pass methods as argument  
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        controller.addAction(okAction)
        
        self.presentViewController(controller, animated: true, completion: nil)
//        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    

}

