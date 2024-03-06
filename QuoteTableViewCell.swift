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
        // Set the background color for the text only
        let attributedString = NSMutableAttributedString(string: quoteLabel.text ?? "")
        if let textRange = attributedString.string.range(of: quoteLabel.text ?? "") {
            let nsRange = NSRange(textRange, in: attributedString.string)
            let grayColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.55)
            attributedString.addAttribute(NSAttributedString.Key.backgroundColor, value: grayColor, range: nsRange )
            quoteLabel.attributedText = attributedString
        }
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
