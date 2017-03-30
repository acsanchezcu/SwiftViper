//
//  Home_Interactor.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_Interactor: NSObject {
    
    var presenter: Home_Presenter_Protocol!
    var router: Home_Router_Protocol!
    
    //from Login module
    var user: User!
}

extension Home_Interactor: Home_Interactor_Protocol {
    
    func logout() {
        router.navigateToLogin()
    }
    
    func getNotes() {
        let notes_manage_objects = DataManager.sharedInstance.getNotes(username: user.username)
        
        var notes: [Note] = []
        
        for note_manage_object in notes_manage_objects! {
            let note = NoteMapper.mapper(noteManageObject: note_manage_object)
            notes.append(note)
        }
        
        presenter.displayNotes(notes: notes)
    }
    
    func navigateToAddNote() {
        router.navigateToAddNote(user: user)
    }
    
}
