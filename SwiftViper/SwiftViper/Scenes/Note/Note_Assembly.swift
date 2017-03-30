//
//  Note_Assembly.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//


import UIKit

class Note_Assembly: NSObject {
    
    static let sharedInstance = Note_Assembly()
    
    func configure() -> Note_ViewController {
        let viewController = Note_ViewController(nibName: "Note_ViewController", bundle: nil)
        
        let interactor = Note_Interactor()
        let presenter = Note_Presenter()
        let router = Note_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        router.viewController = viewController
        
        return viewController
    }
    
}
