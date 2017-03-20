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
    
    func configure() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let viewController: Login_ViewController = storyboard.instantiateViewController(withIdentifier: "Login_ViewController") as! Login_ViewController
        
        let interactor = Login_Interactor()
        let presenter = Login_Presenter()
        let router = Login_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        return viewController
    }
    
}
