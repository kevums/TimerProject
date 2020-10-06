//
//  ViewController.swift
//  TimerProject
//
//  Created by Kevin Landry on 6/16/20.
//  Copyright © 2020 Kevin Landry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear( _ animated: Bool){
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        // time interval is how long to keep it on, selector is self bc thats where we are writing the function below, not taking any user info, yes it repeats
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        }
    @objc func timerFunction() {
        timeLabel.text = "Time: \(counter)"
        // same as counter = counter - 1
        counter -= 1
        
        if counter == 0 {
            //keeps timer from going on
            timer.invalidate()
            timeLabel.text = "Time's Over"
            
        }
        
    
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

