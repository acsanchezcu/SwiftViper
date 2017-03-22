//
//  Login_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_Presenter: Lib_Presenter {
    
    var viewController: Login_ViewController_Protocol!
    var interactor: Login_Interactor_Protocol!
    
}

extension Login_Presenter: Login_Presenter_Protocol {
    
    func viewIsReady() {
        viewController.usernameTextField.delegate = self
        viewController.passwordTextField.delegate = self
        
        let view_model = ["user", "pass"]
        
        viewController.viewModel = view_model
    }
    
    func btnContinueTapped() {
        if let username = viewController.usernameTextField.text,
            let password = viewController.passwordTextField.text {
            
            if username.characters.count > 0
            && password.characters.count > 0 {
                interactor.login(username: username, password: password)
            } else {
                viewController.showAlertWithTitle(title: "Error", message: "username and password fields are mandatory")
            }
        }
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
    
}

extension Login_Presenter: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
    
}
