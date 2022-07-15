//
//  LoginViewController.swift
//  CustomTableView
//
//  Created by Flavio Dobler on 2022-07-15.
//

import UIKit
import Foundation

class TableController: UIViewController {

    let tableView = UITableView()
    let arrayTable = ["Dude", "What", "The", "Fuck", "Is", "A", "TableView"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
  

}


extension TableController : UITableViewDelegate {
    
}

extension TableController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayTable[indexPath.row]
        return cell
    }
    
    
    
}
