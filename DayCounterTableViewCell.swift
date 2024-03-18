//
//  DayCounterTableViewCell.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/27/24.
//

import UIKit

class DayCounterTableViewCell: UITableViewCell {
    
    let controller = SoberController()
    var soberData: SoberData?
    var id: Int = 1
    
    let mediumImpact = UIImpactFeedbackGenerator(style: .medium)

    override func awakeFromNib() {
        super.awakeFromNib()
        self.soberData = controller.getSoberData()
        setUpLabels()
        
    }
    
    func setUpLabels(){
        if let soberData = soberData {
            settingsArrow.isHidden = true
            timeLabel.text = "\(soberData.soberDate.calculateYearMonthDay())"
        }
    }
    
    @IBAction func imageTapped(_ sender: Any) {
        if let soberData = soberData {
            mediumImpact.impactOccurred()
            returnSwitchTimeType()
        }
    }
    
    
    func returnSwitchTimeType(){
        if let soberDate = soberData?.soberDate {
            switch id {
            case 0: self.id = 1
                timeLabel.text = soberDate.calculateYearMonthDay().capitalized
            case 1: self.id = 2
                timeLabel.text = soberDate.calculateDays().capitalized
            case 2: self.id = 3
                timeLabel.text = soberDate.calculateHours().capitalized
            case 3: self.id = 4
                timeLabel.text = soberDate.calculateMins().capitalized
            case 4: self.id = 0
                timeLabel.text = soberDate.calculateFullSober().capitalized
            default:
                self.id = 0
            }
        }
    }
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var settingsArrow: UIImageView!
    
}
