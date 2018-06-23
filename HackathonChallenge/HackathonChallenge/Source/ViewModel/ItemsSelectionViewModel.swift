//
//  ItemsSelectionViewModel.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation
import RxSwift

class ItemsSelectionViewModel {
    
    // MARK: - Initializers
    init() {}
    
    // MARK: - Properties
    private lazy var interactor : ItemInteractor = {
        return ItemInteractor()
    }()
    
    internal var categories = Variable<[Category]?>([])
    internal var message : String?
    internal var error : String?
    
    // MARK: - Fetchers
    internal func fetchItemsList() {
        do {
            let returnedItemsList = try interactor.fetchItemsList()
            if returnedItemsList?.status == 200 {
                categories.value = returnedItemsList?.categories
                message = returnedItemsList?.message
            } else {
                categories.value = nil
                message = "Sorry! No food available for you today!"
            }
        } catch let error {
            self.error = error.localizedDescription
        }
    }
    
}
