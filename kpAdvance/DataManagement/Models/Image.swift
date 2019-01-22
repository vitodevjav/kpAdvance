//
//  Image.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Image)
public class Image: NSManagedObject {
    @NSManaged public var id: String?
    @NSManaged public var localUlr: String?
    @NSManaged public var url: String?
    @NSManaged public var user: User?
}
