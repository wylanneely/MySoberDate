//
//  Quote.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 3/2/24.
//

import Foundation
import UIKit


class Quote {    
    let quote: String
    let author: String
    var showDate: Date? = nil
    var image: UIImage
    
    init(quote: String, author: String, image: UIImage) {
        self.quote = quote
        self.author = author
        self.image = image
    }
    
//    init(quote: String,author: String, showdate: Date){
//        self.quote = quote
//        self.author = author
//        self.showDate = showdate
//    }
}
