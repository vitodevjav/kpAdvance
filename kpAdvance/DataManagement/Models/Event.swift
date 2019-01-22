//
//  Event.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Event)
public class Event: NSManagedObject {
    @NSManaged public var endDate: NSDate?
    @NSManaged public var eventDescription: String?
    @NSManaged public var id: String?
    @NSManaged public var startTime: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var eventType: EventType?
    @NSManaged public var user: User?
}
