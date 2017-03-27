//
//  Login_Router.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_Router: NSObject {
    var viewController: Login_ViewController!
}

extension Login_Router: Login_Router_Protocol {
    
    func navigateToHome(user: User) {
        
        let home_viewController: Home_ViewController = Home_Assembly.sharedInstance.configure()
        
        let home_presenter: Home_Presenter = home_viewController.presenter as! Home_Presenter
        let home_interactor: Home_Interactor = home_presenter.interactor as! Home_Interactor
        
        home_interactor.user = user
        
        home_viewController.navigationItem.hidesBackButton = true
        
        viewController.navigationController?.setViewControllers([ home_viewController], animated: true)
    }
    
}
