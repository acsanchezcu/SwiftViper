//
//  Register_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Register_Presenter: Lib_Presenter {
    
    var viewController: Register_ViewController_Protocol!
    var interactor: Register_Interactor_Protocol!
    
}

extension Register_Presenter: Register_Presenter_Protocol {
    
    func viewIsReady() {
        viewController.printCloseButton()
        viewController.countries = ["Spain", "UK", "EEUU"]
    }
    
    func btnCloseTapped() {
        interactor.dismissViewController()
    }
    
    func btnRegisterTapped() {
        let username = viewController.usernameTextField.text
        let password = viewController.passwordTextField.text
        let confirm_password = viewController.confirmPasswordTextField.text
        let country = viewController.countryTextField.text
        
        if username?.characters.count == 0
        || password?.characters.count == 0
        || confirm_password?.characters.count == 0
        || country?.characters.count == 0 {
            viewController.showAlertWithTitle(title: "Warning", message: "All fields are mandatory")
        } else {
            if password != confirm_password {
                viewController.showAlertWithTitle(title: "Warning", message: "Passwords are not equal")
            } else {
                interactor.saveUser(username: username!, password: password!, country: country!)
            }
        }
    }
    
    func displayUserStoredSuccessfully() {
        let alert_controller = UIAlertController.init(title: "Success!", message: "You've registered successfully! Now you can login into app", preferredStyle: .alert)
        
        let ok_action = UIAlertAction.init(title: "Ok", style: .default) { (action) in
            self.interactor.dismissViewController()
        }
        
        alert_controller.addAction(ok_action)
        
        viewController.showAlertController(alert_controller)
    }
    
    //COMMON
    
    func showLoading(loadingMessage: String) {
        super.showLoading(loadingMessage: loadingMessage, viewController: viewController)
    }
    
    func dismissLoading() {
        super.dismissLoading(viewController: viewController)
    }
    
    func showError(error: Error) {
        super.showError(error: error, viewController: viewController)
    }
    
    func showAlertWithTitle(title: String, message: String) {
        viewController.showAlertWithTitle(title: title, message: message)
    }
    
    func btnMenuTapped() {
        super.btnMenuTapped(viewController: viewController as! UIViewController)
    }
}
