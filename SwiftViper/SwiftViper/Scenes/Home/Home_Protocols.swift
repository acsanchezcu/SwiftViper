//
//  Home_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

protocol Home_ViewController_Protocol: Lib_ViewController_Protocol {
    var presenter: Home_Presenter_Protocol! { get }
    
    var viewModels: [Home_Note_ViewModel] { get set }
}

protocol Home_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    var viewController: Home_ViewController_Protocol! { get }
    
    func viewIsShown()
    func displayNotes(notes: [Note])
    
    func btnLogoutTapped()
    func btnAddNoteTapped()
}

protocol Home_Interactor_Protocol {
    var presenter: Home_Presenter_Protocol! { get }
    var router: Home_Router_Protocol! { get }
    
    var user: User! { get }
    
    func getNotes()
    func logout()
    func navigateToAddNote()
}

protocol Home_Router_Protocol {
    var viewController: Home_ViewController! { get }

    func navigateToLogin()
    func navigateToAddNote(user : User)
}
