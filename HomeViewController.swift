//
//  ViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/23/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    let controller = SoberController()
    var soberData: SoberData?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        soberData = controller.getSoberData()
        
        if let soberData = soberData {
            
            setUpButton.isHidden = true
            soberTimeLabel.text = "\(soberData.returnDaysSober())"
            moneySavedLabel.text = "\(soberData.calculateMoneySaved())"
            reloadInputViews()
            
        } else {
            setUpButton.isHidden = false
        }
       
    }

    //MARK: - Outlets
    @IBOutlet weak var soberTimeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var moneySavedLabel: UILabel!
    @IBOutlet weak var setUpButton: UIButton!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SettingsViewController {
                vc.soberData = soberData
        }
    }

}

