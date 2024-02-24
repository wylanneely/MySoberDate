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
        df.dateFormat = "dd/MM/yyyy HH:mm"
        return df.string(from: self.soberDate)
    }
    
}

class SoberController {
    
    var soberData: SoberData?
    
    func store(soberData: SoberData){
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
    
    //MARK: Keys
    
    
    let keySoberDate: String = "SoberDate"
    let keyDollarAmount: String = "DollarAmount"
    
}


