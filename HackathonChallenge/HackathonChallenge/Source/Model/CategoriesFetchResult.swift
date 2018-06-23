//
//  ItemsFetchResult.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

struct CategoriesFetchResult : Decodable {
    var status : Int?
    var message : String?
    var categories : [Category]?
    
    enum CodingKeys : String, CodingKey {
        case status
        case message
        case categories = "category_list"
    }
    
}
