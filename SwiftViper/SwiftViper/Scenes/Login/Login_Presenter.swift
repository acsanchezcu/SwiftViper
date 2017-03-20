//
//  Login_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_Presenter: NSObject {

    var viewController: Login_ViewController_Protocol!
    var interactor: Login_Interactor_Protocol!
    
}

extension Login_Presenter: Login_Presenter_Protocol {
    
    func viewIsReady() {
        viewController.usernameTextField.delegate = self
        viewController.btnContinue.isEnabled = false
        
        let view_model = ["user", "pass"]
        
        viewController.viewModel = view_model
        
        viewController.showLoading(loadingMessage: "")
        
        sleep(2)
        
        viewController.dismissLoading()
    }

    func showLoading(loadingMessage: String) {
        viewController.showLoading(loadingMessage: loadingMessage)
    }
    
    func dismissLoading() {
        viewController.dismissLoading()
    }
    
    func showError(error: Error) {
        viewController.showError(error: error)
    }
    
}

extension Login_Presenter: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        
        return true
    }
    
}
