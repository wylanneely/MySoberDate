//
//  SettingsViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/24/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    let soberController = SoberController()
    var soberData: SoberData?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if soberData == nil {
            let todaysDate = Date()
            let dformatter = DateFormatter()
            dformatter.dateStyle = .medium
            dformatter.timeStyle = .none
            
            dateTextField.text = dformatter.string(from: todaysDate)
        }

    }
    

    // MARK: - Outlets
    
    @IBOutlet weak var dateTextField: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
