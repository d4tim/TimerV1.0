//
//  TimerViewController.swift
//  Timer
//
//  Created by Дмитрий Тимаров on 04.12.2023.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    @IBOutlet weak var labelOfTimer: UILabel!
    
    var ourTimer = Timer()
    var timerDisplayed = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func onStartButton(_ sender: Any) {
        ourTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action) , userInfo: nil, repeats: true)
        
         
    }
    
    
    @IBAction func onPause(_ sender: Any) {
        ourTimer.invalidate()
    }
    
    @objc func action(){
        timerDisplayed -= 1
        labelOfTimer.text = String(timerDisplayed)
        
    }
    
    

}
