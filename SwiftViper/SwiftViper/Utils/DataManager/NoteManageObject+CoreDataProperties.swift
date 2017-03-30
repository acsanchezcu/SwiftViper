//
//  NoteManageObject+CoreDataProperties.swift
//  
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//
//

import Foundation
import CoreData


extension NoteManageObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NoteManageObject> {
        return NSFetchRequest<NoteManageObject>(entityName: "NoteManageObject");
    }

    @NSManaged public var content: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var image: NSData?
    @NSManaged public var location: String?
    @NSManaged public var title: String?
    @NSManaged public var relationship: UserManageObject?

}
