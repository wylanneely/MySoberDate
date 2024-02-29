//
//  NoteTableViewCell.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/27/24.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    var note: GratefulNote?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }
    
    func setUp(){
        let dformatter = DateFormatter()
        dformatter.dateStyle = .medium
        dformatter.timeStyle = .none

        if let note = note {
            goodTextView.text = note.good
            greatefulTextView.text = note.grateful
            goalTextView.text = note.goal
            let fDateString = dformatter.string(from: note.date)
            dateLabel.text = fDateString
            goodTextView.isEditable = false
            goodTextView.isSelectable = false
            greatefulTextView.isEditable = false
            greatefulTextView.isSelectable = false
            goalTextView.isEditable = false
            goalTextView.isSelectable = false
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var goodTextView: UITextView!
    @IBOutlet weak var greatefulTextView: UITextView!
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    
    
    
}
