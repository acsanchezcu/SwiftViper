//
//  User.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 20/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

class User: NSObject {
    let username: String
    let password: String
    let country: String
    
    init(username: String, password: String, country: String) {
        self.username = username
        self.password = password
        self.country = country
    }
}

class UserMapper: NSObject {
    
    class func mapper(userManageObject: UserManageObject) -> User {
        let user = User.init(username: userManageObject.username!, password: userManageObject.password!, country: userManageObject.country!)
        
        return user
    }
    
}
