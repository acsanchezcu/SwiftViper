//
//  Login_Assembly.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_Assembly: NSObject {
    
    static let sharedInstance = Login_Assembly()
    
    func configure() -> Login_ViewController {
        let viewController = Login_ViewController(nibName: "Login_ViewController", bundle: nil)
        
        let interactor = Login_Interactor()
        let presenter = Login_Presenter()
        let router = Login_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        router.viewController = viewController
        
        return viewController
    }
    
}
