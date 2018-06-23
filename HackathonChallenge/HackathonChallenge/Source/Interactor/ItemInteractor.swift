//
//  ItemsSelectionInteractor.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

class ItemInteractor : BaseInteractor {
    
    private lazy var service : ItemsService = {
        return ItemsService()
    }()
    
    public func fetchItemsList() throws -> CategoriesFetchResult? {
        return try self.service.fetchAvailableItems()
    }
    
}
