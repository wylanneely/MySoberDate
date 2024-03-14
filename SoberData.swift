//
//  SoberDate.swift
//  MySoberData
//
//  Created by Wylan L Neely on 2/23/24.
//

import Foundation


class SoberData {
    
    let soberDate: Date
    let dailyDollarAmount: Int
    
    init(soberDate: Date, dailyDollarAmount: Int) {
        self.soberDate = soberDate
        self.dailyDollarAmount = dailyDollarAmount
    }
    
    func returnFormattedDate()-> String {
        let df = DateFormatter()
        df.dateStyle = .medium
        df.timeStyle = .none
        return df.string(from: self.soberDate)
    }
    
    func calculateMoneySaved()->Int{
        
        let days = returnDaysSober()
        
        return (dailyDollarAmount * days)
    }
    
    func returnDaysSober()->Int{
        let calendar = Calendar.current
       let days = calendar.numberOfDaysBetween(from: soberDate, to: Date())
       return days
    }
    
}

class SoberController {
    
    var soberData: SoberData?
    var quoteId: Int = 0
    
    init() {
        if let idExists = UserDefaults.standard.object(forKey: keylastQuoteID) as? Int {
            self.quoteId = idExists
        } else {
            quoteId = 0
        }
    }
    
    func updateQuoteID(){
        if let newID = UserDefaults.standard.object(forKey: keylastQuoteID) as? Int {
            self.quoteId = newID
        }
    }
    
    func store(soberData: SoberData){
        self.soberData = soberData
        UserDefaults.standard.setValue(soberData.soberDate, forKey: keySoberDate)
        UserDefaults.standard.setValue(soberData.dailyDollarAmount, forKey: keyDollarAmount)
    }
    
    func getSoberData()->SoberData?{
        guard let soberDate = UserDefaults.standard.object(forKey: keySoberDate) as? Date, let dollarAmount = UserDefaults.standard.object(forKey: keyDollarAmount) as? Int else {
            return nil
        }
        let sData = SoberData(soberDate: soberDate, dailyDollarAmount: dollarAmount)
        return sData
    }
    
    func registerLastSigninDay(){
      //  let testDay = Date().makeDate(year: 2023, month: 02, day: 3, hr: 0, min: 0, sec: 0)
        if let today = Date().asDateString {
            UserDefaults.standard.setValue(today, forKey: keyLastSignInDay)
        }
    }
    
    func isNewDay()-> Bool {
        if let lastSingin = UserDefaults.standard.object(forKey: keyLastSignInDay) as? String {
         //  let testDay = Date().makeDate(year: 2023, month: 02, day: 3, hr: 0, min: 0, sec: 0)
            if lastSingin == Date().asDateString {
                registerLastSigninDay()
                return false
            } else {
                registerLastSigninDay()
                let newID = quoteId + 1
                registger(id: newID)
                self.quoteId = newID
               // registerLastSigninDay()
                return true
            }
        }
        registerLastSigninDay()
        return true
    }
    
    func getTodaysQuoteID()->Int{
        if let id = UserDefaults.standard.object(forKey: keylastQuoteID) as? Int {
            return id
        } else {
            return quoteId
        }
    }
    
    func registerTodaysQuoteID(){
        UserDefaults.standard.setValue(quoteId, forKey: keylastQuoteID)
    }
    
    func registger(id: Int) {
        UserDefaults.standard.setValue(id, forKey: keylastQuoteID)

    }
    

    
    
    //MARK: Keys
   private let keyLastSignInDay: String = "signInDay"
   private let keylastQuoteID: String = "lastQuoteID"
   private let keySoberDate: String = "SoberDate"
   private let keyDollarAmount: String = "DollarAmount"
    
}


