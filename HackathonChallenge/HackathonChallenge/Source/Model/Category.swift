//
//  Category.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation
import RxSwift

struct Category : Decodable {
    var name : String?
    var dishes : [Dish]
    
    enum CodingKeys : String, CodingKey {
        case name
        case dishes
    }
}
