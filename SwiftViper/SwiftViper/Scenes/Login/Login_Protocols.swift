//
//  Login_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

protocol Login_ViewController_Protocol: Lib_ViewController_Protocol {
    var presenter: Login_Presenter_Protocol! { get }
    
    weak var btnContinue: UIButton! { get }
    weak var usernameTextField: UITextField! { get }
    weak var passwordTextField: UITextField! { get }
    
    var viewModel: [String] { get set }
}

protocol Login_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    var viewController: Login_ViewController_Protocol! { get }
    
    func btnContinueTapped()
}

protocol Login_Interactor_Protocol {
    var presenter: Login_Presenter_Protocol! { get }
    var router: Login_Router_Protocol! { get }
    
    func login(username: String, password: String)
}

protocol Login_Router_Protocol {
    var viewController: Login_ViewController! { get }
    
    func navigateToHome(user: User)
}
