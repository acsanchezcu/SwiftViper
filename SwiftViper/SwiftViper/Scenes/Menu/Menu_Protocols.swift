//
//  Menu_Protocols.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

protocol Menu_ViewController_Protocol {
    var presenter: Menu_Presenter_Protocol! { get }
    
    var viewModels: [Menu_ViewModel] { get set }
}

protocol Menu_Presenter_Protocol: UITextFieldDelegate {
    var viewController: Menu_ViewController_Protocol! { get }
    
    //methods
    func viewIsReady()
    func viewWasShown()
    
    func displaySections(viewModels: [Menu_ViewModel])
    
    //actions
    func didTapped(scene: Scenes)
}

protocol Menu_Interactor_Protocol {
    var presenter: Menu_Presenter_Protocol! { get }
    var router: Menu_Router_Protocol! { get }
    
    var menuState: MenuState { get }
    var currentScene: Scenes { get }
    
    func getScenes()
    func navigateToScene(scene: Scenes)
}

protocol Menu_Router_Protocol {
    var viewController: Menu_ViewController! { get }
    var navigationController: UINavigationController! { get }
    
    func navigateToScene(scene: Scenes)
}
