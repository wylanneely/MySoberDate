//
//  QuotesDatabaseService.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 3/9/24.
//

import Foundation
import UIKit

//storing the quotes as an integer that points to where on the array it is stored

class QuoteController {
    
    let storedQuotes = Quotes().quotes
    
    var saved: [Int]
    var unSaved : [Int] = []
    
    init(){
        saved = UserDefaults.standard.object(forKey: key) as? [Int] ?? []
    }
    
    func store(quoteInt:Int){
        self.unSaved = saved
        saved.append(quoteInt)
        UserDefaults.standard.setValue(saved, forKey: key)
    }
    
    func getStoredQuoteInts(){
        guard let quoteInts = UserDefaults.standard.object(forKey: key) as? [Int] else {
            print("Error retrieving quote [Int]s ")
            return
        }
        saved = quoteInts
    }
    
    func createSavedQuotes()->[Quote]{
        
       var savedQuotes = [Quote]()
        for i in saved {
            let q = storedQuotes[i]
            savedQuotes.append(q)
        }
        return savedQuotes
    }
    
    func removeQuote(){
        UserDefaults.standard.setValue(unSaved, forKey: key)
        saved = unSaved
    }
    
    let key: String = "Quotes"
    
}
