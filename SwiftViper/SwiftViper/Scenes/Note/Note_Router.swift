//
//  Note_Router.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Note_Router: NSObject {
    var viewController: Note_ViewController!
}

extension Note_Router: Note_Router_Protocol {
    
    func popViewController() {
        viewController.navigationController?.popViewController(animated: true)
    }
    
}
