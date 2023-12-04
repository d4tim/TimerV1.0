//
//  WorkOutTableViewCell.swift
//  Timer
//
//  Created by Дмитрий Тимаров on 04.12.2023.
//

import UIKit

class WorkOutTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var setNameLabel: UILabel!
    @IBOutlet weak var exerciseTimeLabel: UILabel!
    @IBOutlet weak var exerciseRestLabel: UILabel!
    
    
    @IBOutlet weak var nameLB: UILabel!
    @IBOutlet weak var timeForExerciseLB: UILabel!
    @IBOutlet weak var timeForRestLB: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    
}
