//
//  Login_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

protocol Login_ViewController_Protocol: Lib_ViewController_Protocol {
    weak var btnContinue: UIButton! { get }
    weak var usernameTextField: UITextField! { get }
    
    var viewModel: [String] { get set }

}

protocol Login_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    func viewIsReady()
}

protocol Login_Interactor_Protocol {
    func login(username: String, password: String)
}

protocol Login_Router_Protocol {
    func navigateToHome()
}
