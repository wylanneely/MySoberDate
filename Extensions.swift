//
//  Extensions.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/26/24.
//

import Foundation
import UIKit



extension Calendar {
    
    func numberOfDaysBetween(from: Date, to: Date) -> Int {
        let numberOfDays = dateComponents([.day], from: from, to: to)
        return numberOfDays.day!
    }
    
}

extension Date {

    var onlyDate: Date? {
        get {
            let calender = Calendar.current
            var dateComponents = calender.dateComponents([.year, .month, .day], from: self)
            dateComponents.timeZone = .current
            return calender.date(from: dateComponents)
        }
    }
    
    func from(year: Int, month: Int, day: Int) -> Date {
            let gregorianCalendar = NSCalendar(calendarIdentifier: .gregorian)!

            var dateComponents = DateComponents()
            dateComponents.year = year
            dateComponents.month = month
            dateComponents.day = day

            let date = gregorianCalendar.date(from: dateComponents)!
            return date
        }
    
    var asDateString: String? {
        get {
            let dformatter = DateFormatter()
            dformatter.dateStyle = .medium
            dformatter.timeStyle = .none
            
            return dformatter.string(from: self)
        }
    }
}
