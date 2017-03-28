//
//  UserManageObject+CoreDataProperties.swift
//  
//
//  Created by Abel Sánchez Custodio on 27/3/17.
//
//

import Foundation
import CoreData


extension UserManageObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserManageObject> {
        return NSFetchRequest<UserManageObject>(entityName: "UserManageObject");
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var country: String?

}
