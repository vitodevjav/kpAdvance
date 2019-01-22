//
//  User.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(User)
public class User: NSManagedObject {
    @NSManaged public var email: String?
    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var account: Account?
    @NSManaged public var events: NSSet?
    @NSManaged public var image: Image?
    @NSManaged public var transactions: NSSet?
}

// MARK: Safe accessors
extension User {
    func addEvents(_ events: [Event]) {
        addToEvents(NSSet(array: events))
    }

    func removeEvents(_ events: [Event]) {
        removeFromEvents(NSSet(array: events))
    }

    func addTransactions(_ transactions: [Transaction]) {
        addToTransactions(NSSet(array: transactions))
    }

    func removeTransactions(_ transactions: [Transaction]) {
        removeFromTransactions(NSSet(array: transactions))
    }
}

// MARK: Generated accessors for events
extension User {
    @objc(addEventsObject:)
    @NSManaged public func addEvent(_ value: Event)

    @objc(removeEventsObject:)
    @NSManaged public func removeEvent(_ value: Event)

    @objc(addEvents:)
    @NSManaged private func addToEvents(_ values: NSSet)

    @objc(removeEvents:)
    @NSManaged private func removeFromEvents(_ values: NSSet)
}

// MARK: Generated accessors for transactions
extension User {
    @objc(addTransactionsObject:)
    @NSManaged public func addTransaction(_ value: Transaction)

    @objc(removeTransactionsObject:)
    @NSManaged public func removeTransaction(_ value: Transaction)

    @objc(addTransactions:)
    @NSManaged private func addToTransactions(_ values: NSSet)

    @objc(removeTransactions:)
    @NSManaged private func removeFromTransactions(_ values: NSSet)
}

