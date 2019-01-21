//
//  Transaction.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Transaction)
public class Transaction: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Transaction> {
        return NSFetchRequest<Transaction>(entityName: "Transaction")
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var id: String?
    @NSManaged public var value: Double
    @NSManaged public var fromAccount: Account?
    @NSManaged public var toAccount: Account?
    @NSManaged public var user: User?
}
