//
//  Item.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation
import RxSwift

struct Dish : Decodable, Equatable {
    var id : Int?
    var name : String?
    var description : String?
    var imageUrlString : String?
    var category : String?
    var ingredients : [String]?
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case description
        case imageUrlString = "img_url"
        case category = "category_name"
        case ingredients = "ingredients_array"
    }
    
    static func == (lhs: Dish, rhs: Dish) -> Bool {
        return lhs.id == rhs.id
    }
}
