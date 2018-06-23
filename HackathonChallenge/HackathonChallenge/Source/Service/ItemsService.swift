//
//  ItemsService.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

class ItemsService {
    
    init() {}
    
    internal func fetchAvailableItems() throws -> CategoriesFetchResult? {
        guard let filePath = R.file.mockedAPIJson.path() else { throw ServiceError.failedToGeneratePath}
        
        do {
            let url = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: url)
            let result = try JSONDecoder().decode(CategoriesFetchResult.self, from: data)
            return result
        } catch let error {
            throw ServiceError.failedToParse(error.localizedDescription)
        }
    }
    
}
