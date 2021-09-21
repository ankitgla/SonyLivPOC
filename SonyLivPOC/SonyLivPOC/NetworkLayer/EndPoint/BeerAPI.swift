//
//  BeerAPI.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import Foundation

public enum BeerAPI {
    case fetchList(page:Int)
}

extension BeerAPI: URLObject {
    
    var environmentBaseURL : String {
        return "https://api.punkapi.com/v2/"
    }
    
    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .fetchList:
            return "beers"
        }
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
    var task: HTTPTask {
        switch self {
        case .fetchList(let page):
            return .requestParameters(bodyParameters: nil,
                                      bodyEncoding: .urlEncodingWithJsonResponse,
                                      urlParameters: ["page":page])        
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
