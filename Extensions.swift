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
    
    func makeDate(year: Int, month: Int, day: Int, hr: Int, min: Int, sec: Int) -> Date {
        var calendar = Calendar(identifier: .gregorian)
        // calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        let components = DateComponents(year: year, month: month, day: day, hour: hr, minute: min, second: sec)
        return calendar.date(from: components)!
    }

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
    
    
    func calculateHours()->String{
        let difference = Calendar.current.dateComponents([.hour], from: self, to: Date())
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [ .hour]

        formatter.unitsStyle = .full
        if let soberHours = formatter.string(from: difference) {
            return soberHours
        } else {
            return "error"
        }
        
    }
    
    func calculateMins()->String {
        let difference = Calendar.current.dateComponents([.minute], from: self, to: Date())
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [ .minute]

        formatter.unitsStyle = .full
        if let soberHours = formatter.string(from: difference) {
            return soberHours
        } else {
            return "error"
        }
    }
    
    func calculateDays()->String {
        let difference = Calendar.current.dateComponents([.day], from: self, to: Date())
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [ .day]

        formatter.unitsStyle = .full
        if let soberHours = formatter.string(from: difference) {
            return soberHours
        } else {
            return "error"
        }
    }
    
    func calculateYearMonthDay()->String {
        let difference = Calendar.current.dateComponents([.year,.month,.day], from: self, to: Date())
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [ .year,.month,.day]

        formatter.unitsStyle = .full
        if let soberHours = formatter.string(from: difference) {
            return soberHours
        } else {
            return "error"
        }
    }
    func calculateFullSober()->String {
        let difference = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute], from: self, to: Date())
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [ .year,.month,.day,.hour,.minute]
        formatter.unitsStyle = .brief
        
        if let soberHours = formatter.string(from: difference) {
            return soberHours
        } else {
            return "error"
        }
    }
    
    func dateToDayString()->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dayString = dateFormatter.string(from: self)
        return dayString
    }
    
}

extension String {
    
    func dateToDayString(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dayString = dateFormatter.string(from: date)
            return dayString
    }
    
    
    var formattedDate: String? {
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ssZZZZ"
           if let date = dateFormatter.date(from: self) {
               print(date)
               dateFormatter.dateFormat = "yyyy-MM-dd"
               return dateFormatter.string(from: date)
           }
           return nil
       }
    
}
