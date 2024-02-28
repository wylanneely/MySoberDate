//
//  HomeTableViewController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/27/24.
//

import UIKit

class HomeTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let controller = SoberController()
    var soberData: SoberData?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        soberData = controller.getSoberData()
        setUpTableView()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    //MARK: - Tableview
    
    @IBOutlet weak var tableView: UITableView!
    
    func setUpTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "DayCounterTableViewCell", bundle: nil), forCellReuseIdentifier: "DayCounterTableViewCell")
        self.tableView.register(UINib(nibName: "MoneyTableViewCell", bundle: nil), forCellReuseIdentifier: "MoneyTableViewCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DayCounterTableViewCell", for: indexPath) as? DayCounterTableViewCell else {
                return UITableViewCell()
            }
            cell.soberData = self.soberData
            return cell
        }
        
        if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoneyTableViewCell", for: indexPath) as? MoneyTableViewCell else {
                return UITableViewCell()
            }
            cell.soberData = self.soberData
            return cell
        }
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DayCounterTableViewCell", for: indexPath) as? DayCounterTableViewCell else {
            return UITableViewCell()
        }
        cell.soberData = self.soberData
        return cell
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
