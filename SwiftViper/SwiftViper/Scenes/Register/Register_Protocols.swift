//
//  Register_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

protocol Register_ViewController_Protocol: Lib_ViewController_Protocol {
    var presenter: Register_Presenter_Protocol! { get }
}

protocol Register_Presenter_Protocol: UITextFieldDelegate, Lib_Presenter_Protocol {
    var viewController: Register_ViewController_Protocol! { get }
}

protocol Register_Interactor_Protocol {
    var presenter: Register_Presenter_Protocol! { get }
    var router: Register_Router_Protocol! { get }
}

protocol Register_Router_Protocol {
    var viewController: Register_ViewController! { get }
}
