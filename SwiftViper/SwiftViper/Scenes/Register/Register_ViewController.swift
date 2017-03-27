//
//  Register_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Register_ViewController: Lib_ViewController {
    
    var presenter: Register_Presenter_Protocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewIsReady()
    }
    
    // MARK: - Actions
    
    override func btnMenuTapped(_ sender: Any) {
        presenter.btnMenuTapped()
    }
    
}

extension Register_ViewController: Register_ViewController_Protocol {
    
}
