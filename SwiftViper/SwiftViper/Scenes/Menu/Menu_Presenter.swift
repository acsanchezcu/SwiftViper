//
//  Menu_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Menu_Presenter: Lib_Presenter {
    
    var viewController: Menu_ViewController_Protocol!
    var interactor: Menu_Interactor_Protocol!
    
    func displaySections(viewModels: [Menu_ViewModel]) {
        viewController.viewModels = viewModels
    }
}

extension Menu_Presenter: Menu_Presenter_Protocol {
    
    func viewIsReady() {
        //first time by default
    }
    
    func viewWasShown() {
        interactor.getScenes()
    }
    
    func didTapped(scene: Scenes) {
        interactor.navigateToScene(scene: scene)
    }
    
}
