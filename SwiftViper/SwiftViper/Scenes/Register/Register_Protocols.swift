//
//  Register_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

protocol Register_ViewController_Protocol: Lib_ViewController_Protocol {
    var presenter: Register_Presenter_Protocol! { get }
    
    //view models
    var countries: [String] { get set }
    
    //outlets
    weak var usernameTextField: UITextField! { get }
    weak var passwordTextField: UITextField! { get }
    weak var confirmPasswordTextField: UITextField! { get }
    weak var countryTextField: UITextField! { get }
    
    //functions
    func printCloseButton()
}

protocol Register_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    var viewController: Register_ViewController_Protocol! { get }
    
    func btnCloseTapped()
    func btnRegisterTapped()
    func displayUserStoredSuccessfully()
}

protocol Register_Interactor_Protocol {
    var presenter: Register_Presenter_Protocol! { get }
    var router: Register_Router_Protocol! { get }
    
    func dismissViewController()
    func saveUser(username: String, password: String, country: String)
}

protocol Register_Router_Protocol {
    var viewController: Register_ViewController! { get }
    
    func dismissViewController()
}
