//
//  EventType.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(EventType)
public class EventType: NSManagedObject {
    @NSManaged public var id: String?
    @NSManaged public var title: String?
    @NSManaged public var events: NSSet?
}

// MARK: Safe accessors
extension EventType {
    func addEvents(_ events: [Event]) {
        addToEvents(NSSet(array: events))
    }

    func removeEvents(_ events: [Event]) {
        removeFromEvents(NSSet(array: events))
    }
}

// MARK: Generated accessors for events
extension EventType {
    @objc(addEventsObject:)
    @NSManaged public func addEvent(_ value: Event)

    @objc(removeEventsObject:)
    @NSManaged public func removeEvent(_ value: Event)

    @objc(addEvents:)
    @NSManaged private func addToEvents(_ values: NSSet)

    @objc(removeEvents:)
    @NSManaged private func removeFromEvents(_ values: NSSet)
}
