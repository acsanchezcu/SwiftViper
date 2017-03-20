//
//  Lib_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Lib_ViewController: UIViewController {

//    var presenter: Lib_Presenter_Protocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //        usernameTextField.delegate = presenter
    }
    
    
}

//extension UIViewController: Lib_ViewController_Protocol {
//    
//    func showLoading(loadingMessage: String) {
//        print("\(loadingMessage) > Lib_ViewController")
//    }
//    
//    func dismissLoading() {
//        print("dismissLoading > Lib_ViewController")
//    }
//    
//    func showError(error: Error) {
//        let alert_controller = UIAlertController.init(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
//        
//        present(alert_controller, animated: true, completion: nil)
//    }
//    
//}
