//
//  Beer.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import Foundation

struct BeerApiResponse {
    let beerList: [Beer]
}

extension BeerApiResponse: Decodable {
    
    private enum BeerApiResponseCodingKeys: String, CodingKey {
        case beerList
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: BeerApiResponseCodingKeys.self)
        
        beerList = try container.decode([Beer].self, forKey: .beerList)
    }
}

struct Beer {
    let id:Int
    let name:String
    let tagline:String
    let firstBrewed:String
    let description:String
    let imageUrl:String
    let abv:Double
    let ibu:Int
    let target_fg:Int
    let target_og:Int
    let ebc:Int
    let srm:Int
    let ph:Double
    let attenuation_level:Int
    let brewers_tips:String
    let contributed_by:String
}

extension Beer: Decodable {
    
    enum BeerCodingKeys: String, CodingKey {
        case id
        case name
        case tagline
        case firstBrewed = "first_brewed"
        case description
        case imageUrl = "image_url"
        case abv
        case ibu
        case target_fg
        case target_og
        case ebc
        case srm
        case ph
        case attenuation_level
        case brewers_tips
        case contributed_by
    }
    
    
    init(from decoder: Decoder) throws {
        let beerContainer = try decoder.container(keyedBy: BeerCodingKeys.self)
        
        id = try beerContainer.decode(Int.self, forKey: .id)
        name = try beerContainer.decode(String.self, forKey: .name)
        tagline = try beerContainer.decode(String.self, forKey: .tagline)
        firstBrewed = try beerContainer.decode(String.self, forKey: .firstBrewed)
        description = try beerContainer.decode(String.self, forKey: .description)
        imageUrl = try beerContainer.decode(String.self, forKey: .imageUrl)
        
        abv = try beerContainer.decode(Double.self, forKey: .abv)
        ibu = try beerContainer.decode(Int.self, forKey: .ibu)
        target_fg = try beerContainer.decode(Int.self, forKey: .target_fg)
        target_og = try beerContainer.decode(Int.self, forKey: .target_og)
        ebc = try beerContainer.decode(Int.self, forKey: .ebc)
        srm = try beerContainer.decode(Int.self, forKey: .srm)
        ph = try beerContainer.decode(Double.self, forKey: .ph)
        attenuation_level = try beerContainer.decode(Int.self, forKey: .attenuation_level)
        brewers_tips = try beerContainer.decode(String.self, forKey: .brewers_tips)
        contributed_by = try beerContainer.decode(String.self, forKey: .contributed_by)
    }
}
