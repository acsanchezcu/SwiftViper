//
//  Note_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

protocol Note_ViewController_Protocol: Lib_ViewController_Protocol {
    var presenter: Note_Presenter_Protocol! { get }
    
    weak var titleTextField: UITextField! { get }
    weak var contentTextView: UITextView! { get }
}

protocol Note_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    var viewController: Note_ViewController_Protocol! { get }
    
    func btnSaveTapped()
    func displayNoteStoredSuccessfully()
}

protocol Note_Interactor_Protocol {
    var presenter: Note_Presenter_Protocol! { get }
    var router: Note_Router_Protocol! { get }
    
    var user: User! { get }
    
    func saveNote(title: String, content: String)
    func popViewController()
}

protocol Note_Router_Protocol {
    var viewController: Note_ViewController! { get }
    
    func popViewController()
}
