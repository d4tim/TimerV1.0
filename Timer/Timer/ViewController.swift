//
//  ViewController.swift
//  Timer
//
//  Created by Дмитрий Тимаров on 03.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var exerNameTextField: UITextField?
    var timeforExerTextField: UITextField?
    var timeForRestTextField: UITextField?

    @IBOutlet weak var labelWorkOut: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func isOnSet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Fill in the fields", message: nil, preferredStyle: .alert)
        
        alertController.addTextField(configurationHandler: exerNameTextField)
        alertController.addTextField(configurationHandler: timeforExerTextField)
        alertController.addTextField(configurationHandler: timeForRestTextField)
        
        let okAction = UIAlertAction(title: "add", style: .default, handler: self.okHandler)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true)
        
    }
    
    func exerNameTextField(textField: UITextField){
        exerNameTextField = textField
        textField.placeholder = "Exercise Name"
        
    }
    
    func timeforExerTextField(textField: UITextField){
        timeforExerTextField = textField
        textField.placeholder = "Time For Exercise"
    }
    
    func timeForRestTextField(textField: UITextField){
        timeForRestTextField = textField
        textField.placeholder = "Time For Rest"
    }
    
    func okHandler(alert: UIAlertAction!){
        let workOut = WorkOutViewController()
        
        
        
        
//        let settingVC = SettingsViewController()
//        settingVC.customInit(exerName: (exerNameTextField?.text)!, timeforExer: (timeforExerTextField?.text)!, timeForRest: (timeForRestTextField?.text)!)
        
        workOut.customInit(exerName: (exerNameTextField?.text)!, timeforExer: (timeforExerTextField?.text)!, timeForRest: (timeForRestTextField?.text)!)
        
        self.navigationController?.pushViewController(workOut, animated: true)
        
        
    }
    
}

