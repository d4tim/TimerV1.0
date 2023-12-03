//
//  SettingsViewController.swift
//  Timer
//
//  Created by Дмитрий Тимаров on 03.12.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var exerciseName: UITextField!
    @IBOutlet weak var timeForExerciseLabel: UITextField!
    @IBOutlet weak var timeForRestLabel: UITextField!
    
    var exerName: String?
    var timeforExer: String?
    var timeForRest: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exerciseName.text = exerName
        timeForExerciseLabel.text = timeforExer
        timeForRestLabel.text = timeForRest
        

    }
    
    
    @IBAction func isAddButton(_ sender: Any) {
    }
    
    @IBAction func isCancelButton(_ sender: Any) {
    }
    
    func customInit(exerName: String, timeforExer: String, timeForRest: String){
        self.exerName = exerName
        self.timeforExer = timeforExer
        self.timeForRest = timeForRest
    }

    
    
    

}
