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
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("Button record pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
    }
    

    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop recording pressed")
        recordingLabel.text = "Tap to Record"
        stopRecordingButton.enabled = false
        recordButton.enabled = true
    }
    
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear called")
    }
    
    
}

