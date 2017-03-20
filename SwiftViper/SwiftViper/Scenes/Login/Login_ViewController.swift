//
//  Login_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Login_ViewController: UIViewController {
    
    var presenter: Login_Presenter_Protocol!
    
    @IBOutlet weak var usernameTitleLabel: UILabel!
    @IBOutlet weak var passwordTitleLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
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
        
        presenter.viewIsReady()
        
//        usernameTextField.delegate = presenter
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension Login_ViewController: Login_ViewController_Protocol {
    
    func showLoading(loadingMessage: String) {
        print("\(loadingMessage) > Lib_ViewController")
    }
    
    func dismissLoading() {
        print("dismissLoading > Lib_ViewController")
    }
    
    func showError(error: Error) {
        let alert_controller = UIAlertController.init(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        
        present(alert_controller, animated: true, completion: nil)
    }
    
}
