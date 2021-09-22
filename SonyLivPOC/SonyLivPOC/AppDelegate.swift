//
//  AppDelegate.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        navigateToRootVC()
        return true
    }

    private func navigateToRootVC() {
        window = UIWindow()
        window?.makeKeyAndVisible()
        let container = BeerListDependencyContainer()
        window?.rootViewController = UINavigationController(rootViewController: container.makeBeerListViewController())
    }
    
}

