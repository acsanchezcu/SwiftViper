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
