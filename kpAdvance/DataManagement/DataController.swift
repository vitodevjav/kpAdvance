//
//  DataController.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation

class DataController {
    static let shared = DataController()
    private let coreDataStack: CoreDataStack
    private init() {
        coreDataStack = CoreDataStack()
    }
}
