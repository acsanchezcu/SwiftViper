//
//  Home_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_Presenter: Lib_Presenter {
    
    var viewController: Home_ViewController_Protocol!
    var interactor: Home_Interactor_Protocol!
    
}

extension Home_Presenter: Home_Presenter_Protocol {
    
    func viewIsReady() {
        let username = interactor.user.name
        
        viewController.welcomeLabel.text = "Welcome \(username)!"
    }
    
    func btnLogoutTapped() {
        interactor.logout()
    }
    
    //COMMON
    
    func showLoading(loadingMessage: String) {
        super.showLoading(loadingMessage: loadingMessage, viewController: viewController)
    }
    
    func dismissLoading() {
        super.dismissLoading(viewController: viewController)
    }
    
    func showError(error: Error) {
        super.showError(error: error, viewController: viewController)
    }
    
    func showAlertWithTitle(title: String, message: String) {
        viewController.showAlertWithTitle(title: title, message: message)
    }
    
}
