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
        
        navigationController?.navigationItem.leftBarButtonItem = nil
        navigationController?.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationItem.leftBarButtonItem = nil
        navigationController?.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func btnLogoutTapped(_ sender: Any) {
        presenter.btnLogoutTapped()
    }
    
}

extension Home_ViewController: Home_ViewController_Protocol {
    
}
