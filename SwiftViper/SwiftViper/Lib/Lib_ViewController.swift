//
//  Lib_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Lib_ViewController: UIViewController {
    
}

extension Lib_ViewController: Lib_ViewController_Protocol {
    
    func showLoading(loadingMessage: String) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func dismissLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func showError(error: Error) {
        let alert_controller = UIAlertController.init(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        
        let ok_action = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        
        alert_controller.addAction(ok_action)
        
        present(alert_controller, animated: true, completion: nil)
    }
    
    func showAlertWithTitle(title: String, message: String) {
        let alert_controller = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        
        let ok_action = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        
        alert_controller.addAction(ok_action)
        
        present(alert_controller, animated: true, completion: nil)
    }
    
    func btnMenuTapped(_ sender: Any) {
        
    }
    
    func printMenuButton() {
        
        let image = #imageLiteral(resourceName: "menu_image").imageWithSize(size: CGSize.init(width: 30.0, height: 30.0))
        
        let bar_button_item = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(btnMenuTapped))
        
        bar_button_item.tintColor = UIColor.white
        
        navigationItem.rightBarButtonItem = bar_button_item
    }
    
}
