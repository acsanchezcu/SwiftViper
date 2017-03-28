//
//  Register_Interactor.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Register_Interactor: NSObject {
    
    var presenter: Register_Presenter_Protocol!
    var router: Register_Router_Protocol!
    
}

extension Register_Interactor: Register_Interactor_Protocol {
    
    func dismissViewController() {
        router.dismissViewController()
    }
    
    func saveUser(username: String, password: String, country: String) {
        if let exist_user = DataManager.sharedInstance.getUser(username: username) {
            presenter.showAlertWithTitle(title: "Error", message: "'\(exist_user.username!)' is already registered!\nPlease just login.")
        } else {
            DataManager.sharedInstance.saveUser(username: username, password: password, country: country)
            
            presenter.displayUserStoredSuccessfully()
        }
    }
    
}
