//
//  Home_Assembly.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//


import UIKit

class Home_Assembly: NSObject {
    
    static let sharedInstance = Home_Assembly()
    
    func configure() -> Home_ViewController {
        let viewController = Home_ViewController(nibName: "Home_ViewController", bundle: nil)
        
        let interactor = Home_Interactor()
        let presenter = Home_Presenter()
        let router = Home_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        router.viewController = viewController
        
        return viewController
    }
    
}
