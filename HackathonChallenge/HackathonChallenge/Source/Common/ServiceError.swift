//
//  ServiceError.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation

enum ServiceError : Error {
    case failedToGeneratePath
    case failedToParse(String)
    case failed(String)
}
