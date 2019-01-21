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
    @nonobjc public class func fetchRequest() -> NSFetchRequest<EventType> {
        return NSFetchRequest<EventType>(entityName: "EventType")
    }

    @NSManaged public var id: String?
    @NSManaged public var title: String?
    @NSManaged public var events: NSSet?

}

// MARK: Generated accessors for events
extension EventType {

    @objc(addEventsObject:)
    @NSManaged public func addToEvents(_ value: Event)

    @objc(removeEventsObject:)
    @NSManaged public func removeFromEvents(_ value: Event)

    @objc(addEvents:)
    @NSManaged public func addToEvents(_ values: NSSet)

    @objc(removeEvents:)
    @NSManaged public func removeFromEvents(_ values: NSSet)

}
