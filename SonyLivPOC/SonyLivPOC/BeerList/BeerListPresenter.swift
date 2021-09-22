//
//  BeerListPresenter.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 22/09/21.
//

import Foundation

protocol BeerListViewInterface : NSObjectProtocol {
    func refreshMovieList()
    func showLoadingError(errorMessage: String)
}


class BeerListPresenter {
    
    private var interactor: BeerListInteractor
    private let router: BeerListRouter
    private let beerClient: BeerClient
    
    init(interactor: BeerListInteractor, router: BeerListRouter, beerClient: BeerClient = BeerClient.shared) {
        self.interactor = interactor
        self.router = router
        self.beerClient = beerClient
    }
    
    weak var beerListViewInterface: BeerListViewInterface?
}
