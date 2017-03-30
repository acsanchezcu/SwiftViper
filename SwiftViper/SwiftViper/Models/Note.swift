//
//  Note.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Note: NSObject {
    let title: String
    let content: String
    let date: Date
    let image: UIImage?
    let location: String?

    init(title: String, content: String, date: Date, image: UIImage?, location: String?) {
        self.title = title
        self.content = content
        self.date = date
        self.image = image
        self.location = location
    }
}

class NoteMapper: NSObject {
    
    class func mapper(noteManageObject: NoteManageObject) -> Note {
        let date: Date = noteManageObject.date! as Date
        
        let note = Note.init(title: noteManageObject.title!, content: noteManageObject.content!, date: date, image: nil, location: noteManageObject.location)
        
        return note
    }
    
}

