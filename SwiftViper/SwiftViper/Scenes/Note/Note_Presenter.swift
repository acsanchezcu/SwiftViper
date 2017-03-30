//
//  Note_Presenter.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 28/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Note_Presenter: Lib_Presenter {
    
    var viewController: Note_ViewController_Protocol!
    var interactor: Note_Interactor_Protocol!
    
}

extension Note_Presenter: Note_Presenter_Protocol {
    
    func viewIsReady() {
    }
    
    func btnSaveTapped() {
        let title = viewController.titleTextField.text
        let content = viewController.contentTextView.text
        
        if title?.characters.count == 0
            || content?.characters.count == 0 {
            viewController.showAlertWithTitle(title: "Error", message: "Title and content are mandatory")
        } else {
            interactor.saveNote(title: title!, content: content!)
        }
    }
    
    func displayNoteStoredSuccessfully() {
      let alert_controller =
          UIAlertController.init(title
                                 : "Success!", message
                                 : "You've added a new note", preferredStyle
                                 :.alert)

              let ok_action = UIAlertAction.init(title
                                                 : "Ok", style
                                                 :.default) {
        (action) in self.interactor.popViewController()
        }
        
        alert_controller.addAction(ok_action)
        
        viewController.showAlertController(alert_controller)
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
