//
//  Beer.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 21/09/21.
//

import Foundation

struct Quantity : Decodable {
    var value:Decimal
    var unit:String
}

struct MethodOperation : Decodable {
    var temp:Quantity
    var duration:Decimal?
}

struct Method :Decodable {
    var mash_temp:[MethodOperation]
    var fermentation:MethodOperation
    var twist:String?
}

struct Ingredient : Decodable {
    var name:String
    var amount:Quantity
    var add:String?
    var attribute:String?
}

struct BeerIngredient : Decodable {
    var malt:[Ingredient]
    var hops:[Ingredient]
    var yeast:String
}

struct Beer : Decodable {
    var id:Int
    var name:String
    var tagline:String
    var first_brewed:String
    var description:String
    var image_url:String
    var abv:Decimal
    var ibu:Decimal?
    var target_fg:Int
    var target_og:Decimal
    var ebc:Int?
    var srm:Decimal?
    var ph:Decimal?
    var attenuation_level:Decimal
    var volume:Quantity
    var boil_volume:Quantity
    var method:Method
    var ingredients:BeerIngredient
    var food_pairing:[String]
    var brewers_tips:String
    var contributed_by:String
}
