//
//  QuoteTableViewCell.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/28/24.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {
    
    let quoteController = QuoteController()

    let quotes = Quotes()
    var quoteId: Int = 0
    
    var isSaved: Bool = false
    
    var favoriteQuote: Quote?
    
    let mediumImpact = UIImpactFeedbackGenerator(style: .medium)

    override func awakeFromNib() {
        super.awakeFromNib()
        if let faveQuote = favoriteQuote {
            setUp(savedQuote: faveQuote)
        } else {
            setUp()
        }
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
    
    func setUp(savedQuote:Quote){
        
        quoteImageView.image = savedQuote.image
        imageButton.isEnabled = false
        imageButton.isHidden = true
        let q = savedQuote.quote
        let a = savedQuote.author
        let text = "\(q) \n- \(a)"
        
        quoteLabel.text? = text
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func imageTapped(_ sender: Any) {
        changeImage()
            isSaved = false
        saveButton.tintColor = UIColor.lightGray
        
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        if isSaved {
            saveButton.tintColor = UIColor.lightGray
            isSaved = !isSaved
            quoteController.removeQuote()
        } else {
            saveButton.tintColor = UIColor(named: "saveBlue")
            isSaved = !isSaved
            quoteController.store(quoteInt: quoteId)
        }
    }
    
    
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    
}
