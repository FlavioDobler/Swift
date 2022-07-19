//
//  MainViewControler+TableView.swift
//  MovieTrending
//
//  Created by Flavio Dobler on 2022-07-19.
//

import Foundation
import UIKit




extension MainViewController : UITableViewDelegate {
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = .clear
        self.registerCells()
        
     }

    func registerCells(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
}


extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell 
    }
    
    
}
