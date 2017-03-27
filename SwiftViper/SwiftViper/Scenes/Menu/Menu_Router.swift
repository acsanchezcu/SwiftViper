//
//  Menu_Router.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit
import SideMenu

class Menu_Router: NSObject {
    var viewController: Menu_ViewController!
    var navigationController: UINavigationController!
}

extension Menu_Router: Menu_Router_Protocol {
    
    func navigateToScene(scene: Scenes) {

        let viewController: UIViewController!        
        switch scene {
        case .Login:
            viewController = Login_Assembly.sharedInstance.configure()
            break
        case .Register:
            viewController = Register_Assembly.sharedInstance.configure()
            break
        case .Home:
            viewController = Home_Assembly.sharedInstance.configure()
            break
        }
        
        print("Routing to \(scene)")
        
        viewController.navigationItem.hidesBackButton = true
        
        DispatchQueue.main.async {
             SideMenuManager.menuRightNavigationController?.dismiss(animated: true, completion: {
                        self.navigationController.setViewControllers([viewController], animated: true)
                })
        }
    }
    
}
