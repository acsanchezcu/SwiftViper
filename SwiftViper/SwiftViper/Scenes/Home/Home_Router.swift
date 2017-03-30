//
//  Home_Router.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_Router: NSObject {
    var viewController: Home_ViewController!
}

extension Home_Router: Home_Router_Protocol {
    
    func navigateToLogin() {
        let login_viewController: Login_ViewController = Login_Assembly.sharedInstance.configure()
        
        login_viewController.navigationItem.hidesBackButton = true
        
        viewController.navigationController?.setViewControllers([login_viewController], animated: true)
    }
    
    func navigateToAddNote(user: User) {
        let note_viewController: Note_ViewController = Note_Assembly.sharedInstance.configure()
        
        let note_presenter: Note_Presenter = note_viewController.presenter as! Note_Presenter
        let note_interactor: Note_Interactor = note_presenter.interactor as! Note_Interactor
        
        note_interactor.user = user
        
        viewController.navigationController?.pushViewController(note_viewController, animated: true)
    }
}
