//
//  Note_Interactor.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Note_Interactor: NSObject {
    
    var presenter: Note_Presenter_Protocol!
    var router: Note_Router_Protocol!
    
    //from Home module
    var user: User!
}

extension Note_Interactor: Note_Interactor_Protocol {
    
    func saveNote(title: String, content: String) {
        DataManager.sharedInstance.saveNote(username: user.username, title: title, content: content)
        
        presenter.displayNoteStoredSuccessfully()
    }
    
    func popViewController() {
        router.popViewController()
    }
    
}
