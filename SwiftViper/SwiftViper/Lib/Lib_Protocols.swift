//
//  Lib_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

protocol Lib_Presenter_Protocol {
    
    func viewIsReady()
    
    func showLoading(loadingMessage: String)
    func dismissLoading()
    func showError(error: Error)
    
//    var viewController: Lib_ViewController_Protocol! { get }
}

protocol Lib_ViewController_Protocol {

    func showLoading(loadingMessage: String)
    func dismissLoading()
    func showError(error: Error)
    
}
