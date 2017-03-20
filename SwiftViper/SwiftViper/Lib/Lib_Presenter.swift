//
//  Lib_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class Lib_Presenter: NSObject {
    
    var viewController: Lib_ViewController_Protocol!
    
}

extension Lib_Presenter: Lib_Presenter_Protocol {
    
    func viewIsReady() {
        viewController.showLoading(loadingMessage: "viewIsReady")
    }
    
    func showLoading(loadingMessage: String) {
        viewController.showLoading(loadingMessage: "Loading, please wait...")
    }
    
    func dismissLoading() {
        viewController.dismissLoading()
    }
    
    func showError(error: Error) {
        viewController.showError(error: error)
    }
    
}
