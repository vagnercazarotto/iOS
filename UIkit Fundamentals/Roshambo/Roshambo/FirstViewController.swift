//
//  ViewController.swift
//  Roshambo
//
//  Created by vagner cazarotto on 7/15/16.
//  Copyright © 2016 vagner cazarotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Buttons
    @IBAction func paperButton(sender: AnyObject) {
        print("paper button pressed")
        performSegueWithIdentifier("play", sender: sender)
    }
    
    
    @IBAction func scissorButton(sender: AnyObject) {
        print("scissor button pressed")
    }
    
    
    @IBAction func rockButton(sender: AnyObject) {
        print("rock button pressed")
        let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
    
        viewController.userChoice = getUserShape(sender as! UIButton)
        presentViewController(viewController, animated: true, completion: nil)
        
    }
    
    
    
    // MARK: Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let vc = segue.destinationViewController as! SecondViewController
            vc.userChoice = getUserShape(sender as! UIButton)
        }
    }
    
    
    
    // The enum "Shape" represents a play or move
    private func getUserShape(sender: UIButton) -> Shape {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.titleForState(.Normal)!
        return Shape(rawValue: shape)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

