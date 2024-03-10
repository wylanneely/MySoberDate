//
//  SavedQuotesViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 3/9/24.
//

import UIKit
import SwiftData

class SavedQuotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    var quotes: [Quote] {
        return QuoteController().createSavedQuotes()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    //MARK: - Setup
    
    func setUpTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "QuoteTableViewCell", bundle: nil), forCellReuseIdentifier: "QuoteTableViewCell")
    }
    
//    func fetchData(){
//        quotes.removeAll()
//        service.fetchTasks { data , error in
//            if let error {
//                print(error)
//            }
//            
//            if let data {
//                self.quotes = data.reversed()
//                DispatchQueue.main.async {
//                    self.tableView.reloadData()
//                }
//            }
//        }
//    }
    
    
    //MARK: - TableView
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let quote = quotes[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteTableViewCell", for: indexPath) as? QuoteTableViewCell else {
            return UITableViewCell()
        }
        cell.favoriteQuote = quote
        cell.setUp(savedQuote: quote)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
    
}
