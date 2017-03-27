//
//  Menu_Interactor.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Menu_Interactor: NSObject {
    
    var presenter: Menu_Presenter_Protocol!
    var router: Menu_Router_Protocol!
    
    var currentScene: Scenes {
        get {
            let viewController = router.navigationController.viewControllers.last
            
            let scene_class: AnyClass = (viewController?.classForCoder)!
            
            switch scene_class {
            case is Login_ViewController.Type:
                return .Login
            case is Register_ViewController.Type:
                return .Register
            case is Home_ViewController.Type:
                return .Home
            default:
                assertionFailure("error, not scene founded")
                return .Login
            }
        }
    }
    
    var menuState: MenuState {
        get {
            switch currentScene {
            case .Home:
                return .Private
            default:
                return .Public
            }
        }
    }
    
    // MARK: - Private Methods
    
    fileprivate func getPublicSections() -> [Menu_ViewModel] {
        let login_view_model = Menu_ViewModel.init(sectionName: "Login", scene: .Login)
        let register_view_model = Menu_ViewModel.init(sectionName: "Register", scene: .Register)
        
        return [login_view_model, register_view_model]
    }
    
    fileprivate func getPrivateSections() -> [Menu_ViewModel] {
        let home_view_model = Menu_ViewModel.init(sectionName: "Home", scene: .Home)
        
        return [home_view_model]
    }
}

extension Menu_Interactor: Menu_Interactor_Protocol {

    func navigateToScene(scene: Scenes) {
        if currentScene == scene {
            return
        }
        
        router.navigateToScene(scene: scene)
    }
 
    func getScenes() {
        var view_models: [Menu_ViewModel]!
        
        switch menuState {
        case .Public:
            view_models = getPublicSections()
            break
        case .Private:
            view_models = getPrivateSections()
            break
        }
        
        presenter.displaySections(viewModels: view_models)
    }

}

