//
//  Note_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Note_ViewController: Lib_ViewController {
    
    var presenter: Note_Presenter_Protocol!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Note"
    }
    
    // MARK: - Actions
    
    override func btnMenuTapped(_ sender: Any) {
        presenter.btnMenuTapped()
    }
    
    @IBAction func btnSaveTapped(_ sender: Any) {
        presenter.btnSaveTapped()
    }
}

extension Note_ViewController: Note_ViewController_Protocol {
    
}
