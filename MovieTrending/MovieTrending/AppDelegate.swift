//
//  AppDelegate.swift
//  MovieTrending
//
//  Created by Flavio Dobler on 2022-07-18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        let window =  UIWindow(frame: UIScreen.main.bounds) // Defines window object
        let navigationController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = navigationController // Initial view controller
        window.makeKeyAndVisible() // Show the window
        
        self.window = window
        return true
    }

    


}

