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
    
}
