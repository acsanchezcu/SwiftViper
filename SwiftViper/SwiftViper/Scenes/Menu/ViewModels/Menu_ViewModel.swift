//
//  Menu_ViewModel.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import Foundation

class Menu_ViewModel : NSObject {
    
    let sectionName: String!
    let scene: Scenes!
    
    init(sectionName: String, scene: Scenes) {
        self.sectionName = sectionName
        self.scene = scene
    }
    
}
