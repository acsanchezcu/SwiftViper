//
//  Home_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_ViewController: Lib_ViewController {
    
    var presenter: Home_Presenter_Protocol!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewIsReady()
        
        title = "Home"
    }
    
    @IBAction func btnLogoutTapped(_ sender: Any) {
        presenter.btnLogoutTapped()
    }
    
    override func btnMenuTapped(_ sender: Any) {
        presenter.btnMenuTapped()
    }
    
}

extension Home_ViewController: Home_ViewController_Protocol {
    
}
