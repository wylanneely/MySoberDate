//
//  QuoteTableViewCell.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/28/24.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    let quotes = Quotes()
    var quoteId: Int = 0
    
    let mediumImpact = UIImpactFeedbackGenerator(style: .medium)

    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }
    
    func setUp(){
        let quoteObj = quotes.quotes.first!
        quoteImageView.image = quoteObj.image
        let q = quoteObj.quote
        let a = quoteObj.author
        let text = "\(q) \n- \(a)"
        quoteLabel.text? = text
    }
    
    func changeImage(){
        mediumImpact.impactOccurred()
        if quoteId == (quotes.quotes.count - 1) {
            quoteId = 0
        } else {
            quoteId = quoteId + 1
        }
        let quoteObj = quotes.quotes[quoteId]
        quoteImageView.image = quoteObj.image
        let q = quoteObj.quote
        let a = quoteObj.author
        let text = "\(q) \n- \(a)"
        quoteLabel.text? = text
    }
    
    func setUp(quote:Quote){
        quoteImageView.image = quote.image
        quoteLabel.text = "'\(quote.quote)'"
       // authorLabel.text = "- \(quote.author)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func imageTapped(_ sender: Any) {
        changeImage()
    }
    
    
    
    
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    
}
