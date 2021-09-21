//
//  ViewController.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import UIKit

class ViewController: UIViewController {

    var networkManager = NetworkManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        networkManager.getBeerList(page: 2) { beers, error in
            print(beers ?? error ?? "")
        }
    }

}

