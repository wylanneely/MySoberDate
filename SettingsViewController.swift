//
//  SettingsViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/24/24.
//

import UIKit

class SettingsViewController: UIViewController, UICalendarViewDelegate, UICalendarSelectionSingleDateDelegate  {
    
    
    let soberController = SoberController()
    var soberData: SoberData?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
           view.addGestureRecognizer(tap)
        
        if soberData == nil {
            let todaysDate = Date()
            let dformatter = DateFormatter()
            dformatter.dateStyle = .medium
            dformatter.timeStyle = .none
            
            dateTextField.text = dformatter.string(from: todaysDate)
        }
        
        createCalendar()

    }
    
    func createCalendar() {
        
        let calendarView = UICalendarView()
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
        let dateSelection = UICalendarSelectionSingleDate(delegate: self)
        calendarView.selectionBehavior = dateSelection
        calendarContainerView.addSubview(calendarView)
        
        let startDate = Date(timeIntervalSince1970: 0)
        calendarView.availableDateRange = DateInterval(start: startDate, end: Date())
        NSLayoutConstraint.activate([calendarView.leadingAnchor.constraint(equalTo: calendarContainerView.leadingAnchor, constant: 0),
                                     calendarView.trailingAnchor.constraint(equalTo: calendarContainerView.trailingAnchor, constant: 0),
                                     calendarView.topAnchor.constraint(equalTo: calendarContainerView.topAnchor, constant: 0),
                                     calendarView.bottomAnchor.constraint(equalTo: calendarContainerView.bottomAnchor, constant: 0)
                                    ])
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    //MARK: - Outlets
    
    @IBOutlet weak var calendarContainerView: UIView!
    @IBOutlet weak var dateTextField: UITextField!
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



    
    
    
    //MARK: - Delegate

// Control whether a person can select a given date.
    func dateSelection(_ selection: UICalendarSelectionSingleDate,
    canSelectDate dateComponents: DateComponents?) -> Bool {
    // Allow all dates by returning true if the selection parameter contains
    // a date component instance. Prevent someone from clearing the selection
    // by returning false if the selection parameter is nil.
        return dateComponents != nil
    }


    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        return nil
    }
    
    func calendarView(_ calendarView: UICalendarView, didChangeVisibleDateComponentsFrom previousDateComponents: DateComponents) {
        
    }
    
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        
    }
    
    
    
}
