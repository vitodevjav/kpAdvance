//
//  Account.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Account)
public class Account: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Account> {
        return NSFetchRequest<Account>(entityName: "Account")
    }

    @NSManaged public var currentValue: Double
    @NSManaged public var id: String?
    @NSManaged public var transactionsFrom: NSSet?
    @NSManaged public var transactionsTo: Transaction?
    @NSManaged public var user: User?

}

// MARK: Generated accessors for transactionsFrom
extension Account {

    @objc(addTransactionsFromObject:)
    @NSManaged public func addToTransactionsFrom(_ value: Transaction)

    @objc(removeTransactionsFromObject:)
    @NSManaged public func removeFromTransactionsFrom(_ value: Transaction)

    @objc(addTransactionsFrom:)
    @NSManaged public func addToTransactionsFrom(_ values: NSSet)

    @objc(removeTransactionsFrom:)
    @NSManaged public func removeFromTransactionsFrom(_ values: NSSet)

}
