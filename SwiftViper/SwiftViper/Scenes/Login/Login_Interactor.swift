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
        
    }
    
}
