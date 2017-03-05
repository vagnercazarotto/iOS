//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Vagner Cazarotto on 3/3/17.
//  Copyright © 2017 Vagner Cazarotto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!
    
    //output lbl
    @IBOutlet weak var outputLabel: UILabel!

    // variables
    var runningNumber = ""
    var currentOperation = Operation.Empty
    var leftValStr = ""
    var rightValStr = ""
    var resultStr = ""
    
    
    enum Operation: String{
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // add a sound 
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError{
            print(err.debugDescription)
        }
        
        outputLabel.text = ""
        
    }

    @IBAction func numberPressed(sender: UIButton){
        playSound()
        
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
    }
    
    
    
    @IBAction func onDividePressed(_ sender: Any) {
        processOperation(operation: .Divide)
    }

    @IBAction func onMultiplyPressed(_ sender: Any) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func onSubtractPressed(_ sender: Any) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func onAddPressed(_ sender: Any) {
        processOperation(operation: .Add)
    }
    
    @IBAction func onEqualPressed(_ sender: Any){
        processOperation(operation: currentOperation)
    }
    
    
    func playSound(){
        if btnSound.isPlaying{
            btnSound.stop()
        }
        btnSound.play()
    }
    
    func processOperation(operation: Operation){
        if currentOperation != Operation.Empty{
            //If a user selected an operation, but then selected another operation without first entering a number
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                    resultStr = "\(Double(leftValStr)! * Double(rightValStr)!)"
                } else if currentOperation == Operation.Divide {
                    resultStr = "\(Double(leftValStr)! / Double(rightValStr)!)"
                } else if currentOperation == Operation.Subtract {
                    resultStr = "\(Double(leftValStr)! - Double(rightValStr)!)"
                } else if currentOperation == Operation.Add {
                    resultStr = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
                leftValStr = resultStr
                outputLabel.text = resultStr
            }
            currentOperation = operation
        } else {
            // This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
    
    
}

