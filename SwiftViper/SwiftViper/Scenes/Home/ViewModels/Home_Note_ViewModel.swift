//
//  Home_Note_ViewModel.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 29/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Home_Note_ViewModel: NSObject {
    let title: String
    let content: String
    let date: String
    
    init(title: String, content: String, date: String) {
        self.title = title
        self.content = content
        self.date = date
    }
}

class Home_Note_ViewModelMapper: NSObject {
    
    class func mapper(note: Note) -> Home_Note_ViewModel {
        let title = note.title
        let content = note.content
        
        let date_formatter = DateFormatter()
        date_formatter.dateFormat = "MMMM dd yyyy HH:mm"
        
        let date = date_formatter.string(from: note.date)
        
        let view_model = Home_Note_ViewModel.init(title: title, content: content, date: date)
        
        return view_model
    }
    
}
