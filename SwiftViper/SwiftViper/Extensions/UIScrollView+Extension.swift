//
//  UIScrollView+Extension.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 27/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

public extension UIScrollView {
    
    func makeAwareOfKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyBoardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyBoardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    // MARK: - Notifications
    
    func keyBoardWillShow(notification: Notification) {
        let info = notification.userInfo as NSDictionary?
        let rectValue = info![UIKeyboardFrameBeginUserInfoKey] as! NSValue
        let kbSize = rectValue.cgRectValue.size
        
        let contentInsets = UIEdgeInsetsMake(0, 0, kbSize.height, 0)
        
        contentInset = contentInsets
        scrollIndicatorInsets = contentInsets
    }
    
    func keyBoardWillHide(notification: Notification) {
        let contentInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        
        UIView.animate(withDuration: 0.3) { 
            self.contentInset = contentInsets
            self.scrollIndicatorInsets = contentInsets
        }
    }
}
