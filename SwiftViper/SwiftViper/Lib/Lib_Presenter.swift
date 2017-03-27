//
//  Lib_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

import SideMenu

class Lib_Presenter: NSObject {

    func showLoading(loadingMessage: String, viewController: Lib_ViewController_Protocol!) {
        viewController.showLoading(loadingMessage: loadingMessage)
    }
    
    func dismissLoading(viewController: Lib_ViewController_Protocol!) {
        viewController.dismissLoading()
    }
    
    func showError(error: Error, viewController: Lib_ViewController_Protocol!) {
        viewController.showError(error: error)
    }
    
    func showAlertWithTitle(title: String, message: String, viewController: Lib_ViewController_Protocol!) {
        viewController.showAlertWithTitle(title: title, message: message)
    }
    
    func btnMenuTapped(viewController: UIViewController) {
        viewController.present(SideMenuManager.menuRightNavigationController!, animated: true, completion: nil)
    }
}
