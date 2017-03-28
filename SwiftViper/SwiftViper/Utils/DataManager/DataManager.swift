//
//  DataManager.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 27/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import Foundation
import CoreData

let filename = "Data"

class DataManager {
    
    static let sharedInstance = DataManager()
    
    let manageObjectContext: NSManagedObjectContext = {
        let manage_object_context = NSManagedObjectContext(concurrencyType: NSManagedObjectContextConcurrencyType.mainQueueConcurrencyType)
        manage_object_context.undoManager = nil
        manage_object_context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        
        return manage_object_context
    }()
    
    init() {
        let managed_object_model_url = Bundle.main.url(forResource: filename, withExtension: "momd")
        
        let managed_object_model = NSManagedObjectModel(contentsOf: managed_object_model_url!)
        
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: managed_object_model!)
        
        let urls = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)
        let doc_url: URL = urls[urls.count - 1] as URL
        let store_url = doc_url.appendingPathComponent("\(filename).sqlite")
        
        let options = [NSMigratePersistentStoresAutomaticallyOption: true, NSInferMappingModelAutomaticallyOption: true]
        
        do {
            try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: store_url, options: options)
        } catch {
            
        }
        
        manageObjectContext.persistentStoreCoordinator = coordinator
    }
    
    func saveUser(username: String, password: String, country: String) {
        let user_manage_object = NSEntityDescription.insertNewObject(forEntityName: "UserManageObject",
                                                                     into: manageObjectContext) as! UserManageObject
        
        user_manage_object.username = username
        user_manage_object.password = password
        user_manage_object.country = country
        
        do {
            try manageObjectContext.save()
        } catch  {
            fatalError("fatal error saving user")
        }
    }
    
    func getUsers() -> [UserManageObject]? {
        let fetch_request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserManageObject")
        
        do {
            let users = try manageObjectContext.fetch(fetch_request) as! [UserManageObject]
            
            return users
        } catch {
            fatalError("fatal error fetching users")
        }
        
        return nil
    }
    
    func getUser(username: String) -> UserManageObject? {
        let fetch_request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserManageObject")
        fetch_request.predicate = NSPredicate(format: "username == %@", username)
        
        do {
            let users = try manageObjectContext.fetch(fetch_request) as! [UserManageObject]
            
            return users.first
        } catch {
            fatalError("fatal error fetching users")
        }
        
        return nil
    }
}
