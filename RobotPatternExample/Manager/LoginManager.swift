//
//  LoginManager.swift
//  RobotPatternExample
//
//  Created by Hildequias Junior on 4/25/19.
//  Copyright © 2019 Hildequias Junior. All rights reserved.
//

import UIKit

class LoginManager: NSObject {

    let user = User()
    
    func createUserToLogin(email: String, password: String) {
        
        user.email = email
        user.password = password
    }
    
    func loginService() -> Bool {
        
        if user.email?.caseInsensitiveCompare("meuemail@email.com") == ComparisonResult.orderedSame
            && user.password?.elementsEqual("1234") == true {
            return true
        }
        
        return false
    }
    
}
