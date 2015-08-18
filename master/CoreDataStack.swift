//
//  CoreDataStack.swift
//  master
//
//  Created by apple on 15/7/28.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    let context: NSManagedObjectContext
    let psc: NSPersistentStoreCoordinator
    let model: NSManagedObjectModel
    let store: NSPersistentStore?
    
    
    init() {
        
        let bundle = NSBundle.mainBundle()
        let modelURL = bundle.URLForResource("Messager", withExtension: "momd")
        model = NSManagedObjectModel(contentsOfURL: modelURL!)!
        psc = NSPersistentStoreCoordinator(managedObjectModel: model)
        context = NSManagedObjectContext()
        context.persistentStoreCoordinator = psc
  
        let documentsURL = CoreDataStack.applicationDocumentsDirectory()
        let storeURL = documentsURL.URLByAppendingPathComponent("master")
        
        // setting this options tells Core Data to automatically merge different versions of a managed object model when model entities or attributes change.
        let options = [NSMigratePersistentStoresAutomaticallyOption: true]
        
        var error: NSError? = nil
        store = psc.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: storeURL, options: options, error: &error)
        
        if store == nil {
            println("Error adding persistent store: \(error)")
            
        }
     
        
    }
    
    func saveContext() {
        var error: NSError? = nil
        if context.hasChanges && !context.save(&error) {
            println("some error\(error), \(error?.userInfo)")
        }
    }
    
    class func applicationDocumentsDirectory() ->NSURL {
    
        //获得沙盒路径
        let fileManager = NSFileManager.defaultManager()
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask) as! [NSURL]
        return urls[0]
    }
    
    
    
    
}
