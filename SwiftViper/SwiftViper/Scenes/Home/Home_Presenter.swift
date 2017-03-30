//
//  Home_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_Presenter: Lib_Presenter {
    
    var viewController: Home_ViewController_Protocol!
    var interactor: Home_Interactor_Protocol!
    
}

extension Home_Presenter: Home_Presenter_Protocol {
    
    func viewIsReady() {
        viewController.printMenuButton()
    }
    
    func viewIsShown() {
        interactor.getNotes()
    }
    
    func displayNotes(notes: [Note]) {
        var view_models: [Home_Note_ViewModel] = []
        
        for note in notes {
            let view_model = Home_Note_ViewModelMapper.mapper(note: note)
            view_models.append(view_model)
        }
        
        viewController.viewModels = view_models
    }
    
    func btnLogoutTapped() {
        interactor.logout()
    }
    
    func btnAddNoteTapped() {
        interactor.navigateToAddNote()
    }
    
    //COMMON
    
    func showLoading(loadingMessage: String) {
        super.showLoading(loadingMessage: loadingMessage, viewController: viewController)
    }
    
    func dismissLoading() {
        super.dismissLoading(viewController: viewController)
    }
    
    func showError(error: Error) {
        super.showError(error: error, viewController: viewController)
    }
    
    func showAlertWithTitle(title: String, message: String) {
        viewController.showAlertWithTitle(title: title, message: message)
    }
    
    func btnMenuTapped() {
        super.btnMenuTapped(viewController: viewController as! UIViewController)
    }
}
