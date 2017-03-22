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
        
        viewController.navigationController?.setViewControllers([login_viewController], animated: true)
    }
    
}
