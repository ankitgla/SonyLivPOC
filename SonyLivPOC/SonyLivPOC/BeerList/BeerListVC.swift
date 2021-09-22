//
//  BeerListVC.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 22/09/21.
//

import UIKit

class BeerListVC: UITableViewController {

    var presenter: BeerListPresenter?
    var networkManager = NetworkManager()
    var pageNumber:Int = 1
    var beerList = [Beer]()
    lazy var imageLoader = ImageCacheLoader()
    
//    lazy var refreshControl: UIRefreshControl = {
//        let rc = UIRefreshControl()
//        rc.addTarget(self, action: #selector(handleRefresh(sender:)), for: .valueChanged)
//        return rc
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadMovies()
    }
    
    func loadMovies() {
        networkManager.getBeerList(page: pageNumber) { beers, error in
            if let beers = beers, !beers.isEmpty {
                self.beerList.append(contentsOf: beers)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
        
}

extension BeerListVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if beerList.count == 0 {
            return 1
        } else {
            return beerList.count
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BeerCell") else { return UITableViewCell() }
        
        if beerList.count == 0 {
            cell.textLabel?.text = "Loading data"
        } else {
            let beer = beerList[indexPath.row]
            cell.textLabel?.text = beer.name
            cell.detailTextLabel?.text = beer.tagline
            imageLoader.obtainImageWithPath(imagePath: beer.image_url) { (image) in
                // Before assigning the image, check whether the current cell is visible
                if let updateCell = tableView.cellForRow(at: indexPath) as? BeerCell {
                    updateCell.imageView?.image = image
                }
            }
        }
        
        return cell;
    }
}

extension BeerListVC: BeerListViewInterface {

    func refreshMovieList() {
//        self.collectionView?.reloadData()
    }
    
    func showLoadingError(errorMessage: String) {
//        print("show error messagae: \(errorMessage)")
    }
}
