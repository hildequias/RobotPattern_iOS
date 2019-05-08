//
//  LoginViewControllerTest.swift
//  RobotPatternExampleUITests
//
//  Created by Hildequias Junior on 4/26/19.
//  Copyright © 2019 Hildequias Junior. All rights reserved.
//

import XCTest

class LoginViewControllerTest: XCTestCase {

    var robot: LoginRobot? = nil
    
    override func setUp() {
        
        robot = LoginRobot()
        robot?.lauchViewController(identifier: "loginView")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_loginSuccess() {
        
        robot?
            .typeEmail(text: "meuemail@email.com")
            .typePassword(text: "1234")
            .clickLogin()
            .checkIfShowedHomeView()
    }
    
    func test_loginFail() {
        
        robot?
            .typeEmail(text: "emailerrado@bol.com.br")
            .typePassword(text: "1111111")
            .clickLogin()
            .checkIfShowedAlert(text: "Aviso")
    }

}
