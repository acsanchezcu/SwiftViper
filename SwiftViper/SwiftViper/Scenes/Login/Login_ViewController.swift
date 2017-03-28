//
//  Login_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_ViewController: Lib_ViewController {
    
    var presenter: Login_Presenter_Protocol!
    
    @IBOutlet weak var usernameTitleLabel: UILabel!
    @IBOutlet weak var passwordTitleLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var btnContinue: UIButton!
    
    private var _viewModel: [String]!
    var viewModel: [String] {
        get {
            return _viewModel
        }
        set {
            usernameTitleLabel.text = newValue[0]
            passwordTitleLabel.text = newValue[1]
            
            _viewModel = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        
        presenter.viewIsReady()  
    }
    
    // MARK: - Actions
    
    @IBAction func btnContinueTapped(_ sender: Any) {
        presenter.btnContinueTapped()
    }
    
    override func btnMenuTapped(_ sender: Any) {
        presenter.btnMenuTapped()
    }
    
    @IBAction func btnRegisterTapped(_ sender: Any) {
        presenter.btnRegisterTapped()
    }
}

extension Login_ViewController: Login_ViewController_Protocol {
    
}
