//
//  MainViewController.swift
//  MovieTrending
//
//  Created by Flavio Dobler on 2022-07-18.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel
    var viewModel : MainViewModel = MainViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }

    
    func configView (){
        setupTableView()
        view.backgroundColor = .systemPink
        self.title = "Main View Controller" //Title are a property of navigation controllers
    }

  

}
