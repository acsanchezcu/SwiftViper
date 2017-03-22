//
//  Register_Assembly.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//


import UIKit

class Register_Assembly: NSObject {
    
    static let sharedInstance = Register_Assembly()
    
    func configure() -> UIViewController {
        let viewController = Register_ViewController(nibName: "Register_ViewController", bundle: nil)
        
        let interactor = Register_Interactor()
        let presenter = Register_Presenter()
        let router = Register_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        router.viewController = viewController
        
        return viewController
    }
    
}
