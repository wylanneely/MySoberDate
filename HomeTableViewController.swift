//
//  HomeTableViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/27/24.
//

import UIKit
import SwiftData

class HomeTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SaveNoteDelegate, ReloaderDelegate {
   
    
    let controller = SoberController()
    var soberData: SoberData?
    let service = SwiftDatabaseService.shared
    
    var gratefulNotes = [GratefulNote]()
    var note: GratefulNote?
    var isGratefulToday: Bool = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // controller.registerLastSigninDay()
        soberData = controller.getSoberData()
        if let soberData {
            soberDateLabel.text = "Sober \(soberData.returnFormattedDate())"
        }
        if controller.isNewDay() {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } else {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        setUpTableView()
        fetchData()
    }
    @objc func reload(){
        self.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector:#selector(self.reload), name: UIApplication.willEnterForegroundNotification, object: UIApplication.shared)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    func fetchData(){
        service.fetchTasks { data , error in
            if let error {
                print(error)
            }
            if let data {
                self.gratefulNotes = data
                self.note = data.last
                if let gNote = self.gratefulNotes.last {
                    if gNote.date.asDateString == Date().asDateString {
                        self.isGratefulToday = true
                        self.note = gNote
                    } else {
                        self.isGratefulToday = false
                        self.note = nil
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    }
                }
                DispatchQueue.main.async {
                        self.tableView.reloadData()
                }
            }
        }
    }
    
    @IBOutlet weak var soberDateLabel: UILabel!
   
    //MARK: - Tableview
    
    @IBOutlet weak var tableView: UITableView!
    
    func setUpTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "DayCounterTableViewCell", bundle: nil), forCellReuseIdentifier: "DayCounterTableViewCell")
        self.tableView.register(UINib(nibName: "MoneyTableViewCell", bundle: nil), forCellReuseIdentifier: "MoneyTableViewCell")
        self.tableView.register(UINib(nibName: "NoteTableViewCell", bundle: nil), forCellReuseIdentifier: "NoteTableViewCell")
        self.tableView.register(UINib(nibName: "QuoteTableViewCell", bundle: nil), forCellReuseIdentifier: "QuoteTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DayCounterTableViewCell", for: indexPath) as? DayCounterTableViewCell else {
                return UITableViewCell()
            }
            cell.soberData = self.soberData
            cell.awakeFromNib()
            return cell
        }
        
        if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoneyTableViewCell", for: indexPath) as? MoneyTableViewCell else {
                return UITableViewCell()
            }
            cell.soberData = self.soberData
            cell.awakeFromNib()
            return cell
        }
        
        if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NoteTableViewCell", for: indexPath) as? NoteTableViewCell else {
                return UITableViewCell()
            }
            if isGratefulToday {
                cell.isSaved = true
                cell.note = note
                cell.awakeFromNib()
                cell.delegate = self
                return cell
            }
            cell.note = self.note
            cell.isSaved = false
            cell.awakeFromNib()
            cell.delegate = self
            return cell
        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteTableViewCell", for: indexPath) as? QuoteTableViewCell else {
            return UITableViewCell()
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0: return 320
        case 1: return 90
        case 2: if isGratefulToday {
            return 420
        } else {
            return 460
        }
        case 3: return 320
        case 4: return 70
        default: return 90
        }
    }
    //MARK: - Delegate
    
    let mediumImpact = UIImpactFeedbackGenerator(style: .medium)

    
    func saveGratefulNoteButtonTapped(note: GratefulNote) {
        
        let alert = UIAlertController(title: "Add", message: "Are you sure you would like to add to Journal?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Erase", style: .destructive, handler: { action in
            switch action.style{
                case .default:
                print("default")
                case .cancel:
                print("cancel")
                case .destructive:
                self.tableView.reloadData()
                self.mediumImpact.impactOccurred()
                return
            }
        }))
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { action in
            switch action.style{
                case .default:
                self.mediumImpact.impactOccurred()
                self.note = note
                self.isGratefulToday = true
                self.service.save(gratefulNote: note)
                    self.tableView.reloadData()
                return
                case .cancel:
                print("cancel")
                case .destructive:
                print("desctuctive")

            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func reloadTableView() {
        self.viewDidLoad()
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? SoberSettingsViewController {
            vc.delegate = self
        }
    }
    
}
