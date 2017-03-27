//
//  Menu_Assembly.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//


import UIKit
import SideMenu

class Menu_Assembly: NSObject {
    
    static let sharedInstance = Menu_Assembly()
    
    func configure(navigationController: UINavigationController) {
        let viewController = Menu_ViewController(nibName: "Menu_ViewController", bundle: nil)
        
        let interactor = Menu_Interactor()
        let presenter = Menu_Presenter()
        let router = Menu_Router()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        router.viewController = viewController
        router.navigationController = navigationController
        
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: viewController)
        menuRightNavigationController.leftSide = false
        
        menuRightNavigationController.setNavigationBarHidden(true, animated: false)
        
        SideMenuManager.menuRightNavigationController = menuRightNavigationController
        
        SideMenuManager.menuAddPanGestureToPresent(toView: navigationController.navigationBar)
        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: navigationController.view)
        SideMenuManager.menuPresentMode = .menuSlideIn
        SideMenuManager.menuFadeStatusBar = false
    }
    
}
