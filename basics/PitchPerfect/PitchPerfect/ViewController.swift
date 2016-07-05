//
//  ViewController.swift
//  PitchPerfect
//
//  Created by vagner cazarotto on 7/5/16.
//  Copyright © 2016 vagner cazarotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("Button record pressed")
        recordingLabel.text = "Recording in progress"
    }
    

    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop recording pressed")
        recordingLabel.text = "Tap to Record"
    }
    
    
}

