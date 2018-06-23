//
//  BaseInteractor.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

class BaseInteractor: OperationQueue {
    
    /**
     Initialize an BaseInteractor subclass.
     
     - parameter maxConcurrentOperationCount: maximun number of concurrent operations. Default = 30
     
     - returns: an instance of BaseInteractor subclass.
     */
    convenience init(maxConcurrentOperationCount : Int = 30) {
        self.init()
        self.maxConcurrentOperationCount = maxConcurrentOperationCount
    }
    
    // MARK: - Deinitializer
    deinit {
        cancelAllOperations()
    }
    
}
