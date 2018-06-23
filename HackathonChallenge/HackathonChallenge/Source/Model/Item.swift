//
//  Item.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

struct Item : Decodable {
    var id : Int
    var name : String
    var description : String
    var imageUrlString : String
    var category : String
    var ingredients : [String]
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case description
        case imageUrlString = "image_url"
        case category = "category_name"
        case ingredients = "ingredients_array"
    }
}
