//
//  Beer.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import Foundation

struct Beer : Decodable {
    var id:Int
    var name:String
    var tagline:String
    var first_brewed:String
    var description:String
    var image_url:String
    var abv:Float
    var ibu:Float
    var target_fg:Int
    var target_og:Float
    var ebc:Int?
    var srm:Float?
    var ph:Float
    var attenuation_level:Float
    var brewers_tips:String
    var contributed_by:String
}
