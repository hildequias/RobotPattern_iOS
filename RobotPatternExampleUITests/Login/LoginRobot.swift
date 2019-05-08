//
//  RobotPatternExampleUITests.swift
//  RobotPatternExampleUITests
//
//  Created by Hildequias Junior on 4/25/19.
//  Copyright © 2019 Hildequias Junior. All rights reserved.
//

class LoginRobot: RobotBase {
    
    func typeEmail(text: String) -> Self {
        fillTextField(identifier: "Email", text: text)
        return self
    }
    
    func typePassword(text: String) -> Self  {
        fillSecureTextFields(identifier: "Password", text: text)
        return self
    }
    
    func clickLogin() -> Self {
        clickButton(identifier: "Login")
        return self
    }
    
    @discardableResult
    func checkIfShowedHomeView() -> Self {
        showedViewWithTitle(identifier: "Home")
        return self
    }
    
    @discardableResult
    func checkIfShowedAlert(text: String) -> Self {
        existAlert(title: text)
        return self
    }
}
