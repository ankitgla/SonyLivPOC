//
//  HTTPTask.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import Foundation

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?)
    
    // case download, upload...etc
}
