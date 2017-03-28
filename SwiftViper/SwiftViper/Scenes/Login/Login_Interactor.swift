//
//  Login_Interactor.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_Interactor: NSObject {
    
    var presenter: Login_Presenter_Protocol!
    var router: Login_Router_Protocol!
    
}

extension Login_Interactor: Login_Interactor_Protocol {
    
    func login(username: String, password: String) {
        
        if let user_manage_object = DataManager.sharedInstance.getUser(username: username) {
            if  user_manage_object.password == password {
                let user = UserMapper.mapper(userManageObject: user_manage_object)
                
                router.navigateToHome(user: user)
            } else {
                presenter.showAlertWithTitle(title: "Error", message: "Password is invalid")
            }
        } else {
            presenter.showAlertWithTitle(title: "Error", message: "User not found")
        }
    }
    
    func navigateToRegister() {
        router.navigateToRegister()
    }
    
}
