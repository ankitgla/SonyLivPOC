//
//  BeerListDependencyContainer.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 22/09/21.
//

import UIKit

class BeerListDependencyContainer {
    
    lazy var interactor = BeerListInteractor()
    lazy var router = BeerListRouter()
    lazy var presenter = BeerListPresenter(interactor: interactor, router: router)

    func makeBeerListViewController() -> BeerListVC {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BeerListVC") as! BeerListVC

        vc.presenter = presenter
        // Dependency Inversion
        presenter.beerListViewInterface = vc
//        interactor.output = presenter
        return vc
    }
    
}
