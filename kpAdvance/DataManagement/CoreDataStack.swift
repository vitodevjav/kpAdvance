//
//  CoreDataStack.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 1/21/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    private let coreDataModelExtension = "momd"
    private let coreDataModelName = "kpAdvanceModel"
    private let coreDataStoreName = "kpAdvanceDataModel.sqlite"

    private var persistentStoreCoordinator: NSPersistentStoreCoordinator
    private var managedObjectContext: NSManagedObjectContext

    init() {
        let url = Bundle.main.url(forResource: coreDataModelName, withExtension: coreDataModelExtension)
        guard let modelURL = url,
            let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL) else {
                fatalError("Error initializing managedObjectModel")
        }

        persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
        managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = persistentStoreCoordinator

        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last else {
                fatalError("Unable to resolve document directory")
            }
            let storeURL = documentsURL.appendingPathComponent(self.coreDataStoreName)
            do {
                try self.persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: storeURL, options: nil)
            } catch {
                fatalError("Error migrating store: \(error)")
            }
        }
    }
}
