//
//  WorkOutViewController.swift
//  Timer
//
//  Created by Дмитрий Тимаров on 04.12.2023.
//

import UIKit

class WorkOutViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var exerName: String?
    var timeforExer: String?
    var timeForRest: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "WorkOutTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
       
    }

    
    func customInit(exerName: String, timeforExer: String, timeForRest: String){
        self.exerName = exerName
        self.timeforExer = timeforExer
        self.timeForRest = timeForRest
    }
    
    
    @IBAction func onStart(_ sender: Any) {
        
        
        let vcTimer = TimerViewController()
        navigationController?.pushViewController(vcTimer, animated: true)
    }
    
    
    @IBAction func addMore(_ sender: Any) {
        
    }
    

}

extension WorkOutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? WorkOutTableViewCell else {
            return WorkOutTableViewCell()
        }
        cell.setNameLabel.text  = exerName
        cell.exerciseTimeLabel.text = timeforExer
        cell.exerciseRestLabel.text = timeForRest
        
        cell.nameLB.text = "Name of Set"
        cell.timeForExerciseLB.text = "Exer"
        cell.timeForRestLB.text = "Rest"
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
