//
//  Account.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/22/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Account)
public class Account: NSManagedObject {
    @NSManaged public var currentValue: Double
    @NSManaged public var id: String?
    @NSManaged public var transactionsFrom: NSSet?
    @NSManaged public var transactionsTo: NSSet?
    @NSManaged public var user: User?
}

// MARK: Safe accessors
extension Account {
    func addTransactionsTo(_ transactions: [Transaction]) {
        addToTransactionsTo(NSSet(array: transactions))
    }

    func removeTransactionsTo(_ transactions: [Transaction]) {
        removeFromTransactionsTo(NSSet(array: transactions))
    }

    func addTransactionsFrom(_ transactions: [Transaction]) {
        addToTransactionsFrom(NSSet(array: transactions))
    }

    func removeTransactionsFrom(_ transactions: [Transaction]) {
        removeFromTransactionsFrom(NSSet(array: transactions))
    }
}

// MARK: Generated accessors for transactionsFrom
extension Account {
    @objc(addTransactionsFromObject:)
    @NSManaged public func addTransactionFrom(_ value: Transaction)

    @objc(removeTransactionsFromObject:)
    @NSManaged public func removeTransactionFrom(_ value: Transaction)

    @objc(addTransactionsFrom:)
    @NSManaged private func addToTransactionsFrom(_ values: NSSet)

    @objc(removeTransactionsFrom:)
    @NSManaged private func removeFromTransactionsFrom(_ values: NSSet)
}

// MARK: Generated accessors for transactionsTo
extension Account {
    @objc(addTransactionsToObject:)
    @NSManaged public func addTransactionTo(_ value: Transaction)

    @objc(removeTransactionsToObject:)
    @NSManaged public func removeTransactionTo(_ value: Transaction)

    @objc(addTransactionsTo:)
    @NSManaged private func addToTransactionsTo(_ values: NSSet)

    @objc(removeTransactionsTo:)
    @NSManaged private func removeFromTransactionsTo(_ values: NSSet)
}

