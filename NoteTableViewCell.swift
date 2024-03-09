//
//  NoteTableViewCell.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/27/24.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    var note: GratefulNote?
    var isSaved: Bool = false
        
    var delegate: SaveNoteDelegate?
    let mediumImpact = UIImpactFeedbackGenerator(style: .medium)

    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }
    
    
    
    func setUp(){
        let dformatter = DateFormatter()
        dformatter.dateStyle = .medium
        dformatter.timeStyle = .none
        
        if isSaved == true {
            saveButton.isHidden = true
            saveButtonImage.isHidden = true
        } else {
            saveButton.isHidden = false
            saveButtonImage.isHidden = false
        }

        let fDateString = dformatter.string(from: Date())
        dateLabel.text = fDateString
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
            saveButton.isHidden = true
            saveButtonImage.isHidden = true
        } else {
            saveButton.isHidden = false
            saveButton.isHidden = false
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
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var saveButtonImage: UIImageView!
    
    func createGreateful()->GratefulNote{
        let date = Date()
        let goal = goalTextView.text ?? ""
        let grateful = greatefulTextView.text ?? ""
              let good = goodTextView.text ?? ""
        let gratefullNote = GratefulNote(date: date, good: good, grateful: grateful, goal: goal)
        return gratefullNote
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        saveButton.isHidden = true
        saveButtonImage.isHidden = true
        delegate?.saveGratefulNoteButtonTapped(note: createGreateful())
        self.mediumImpact.impactOccurred()
    }
    
    
    
    
}

protocol SaveNoteDelegate{
        func saveGratefulNoteButtonTapped(note:GratefulNote)
}
