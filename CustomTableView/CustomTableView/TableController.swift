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
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for x in 1...100 {
            data.append("Some Stuff \(x)")
        }
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
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Cell Tapped")
    }
    
    
}
