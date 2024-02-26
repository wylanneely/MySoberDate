//
//  SettingsViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/24/24.
//

import UIKit

class SettingsViewController: UIViewController  {
    
    
    let soberController = SoberController()
    var soberData: SoberData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        setUpDatePicker()
        let dformatter = DateFormatter()
        dformatter.dateStyle = .medium
        dformatter.timeStyle = .none
        if let soberData = soberData {
            soberDateLabel.text = dformatter.string(from: soberData.soberDate)
            dailyDollarTextField.text = "\(soberData.dailyDollarAmount)"
            
        }
        if soberData == nil {
            let todaysDate = Date()
            
            soberDateLabel.text = dformatter.string(from: todaysDate)
        }
        
        
    }
    

    
    func setUpDatePicker(){
        soberDatePicker.tintColor = UIColor(.white)
        soberDatePicker.maximumDate = Date()
    }
    
   
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    //MARK: - Outlets
    @IBOutlet weak var soberDateLabel: UILabel!
    @IBOutlet weak var soberDatePicker: UIDatePicker!
    @IBOutlet weak var dailyDollarTextField: UITextField!
    @IBOutlet weak var saveUpdateButton: UIButton!
    
    @IBAction func datePickerSelected(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        let selectedDate = dateFormatter.string(from: soberDatePicker.date)
        soberDateLabel.text = selectedDate

    }
    
    @IBAction func saveUpdateButtonTapped(_ sender: Any) {
        let savedSoberData = createSoberData()
        self.soberData = savedSoberData
        soberController.store(soberData:savedSoberData)
    }
    
    func createSoberData()->SoberData{
        let dollarAmount = getDollarIntFromTextfield()
        let soberDate = soberDatePicker.date
        return SoberData(soberDate: soberDate, dailyDollarAmount: dollarAmount)
    }
    
    
    
    func getDollarIntFromTextfield()->Int{
        guard let dollar = Int(dailyDollarTextField.text ?? "0") else {
            return 0
        }
        return dollar
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? HomeViewController {
                vc.soberData = soberData
        }
        
    }
    
    
}

