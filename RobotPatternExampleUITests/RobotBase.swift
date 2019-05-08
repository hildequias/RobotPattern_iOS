//
//  RobotBase.swift
//  RobotPatternExampleUITests
//
//  Created by Hildequias Junior on 4/26/19.
//  Copyright © 2019 Hildequias Junior. All rights reserved.
//

import XCTest
import UIKit
@testable import RobotPatternExample

class RobotBase {
    
    var app:XCUIApplication = XCUIApplication()
    
    func lauchViewController(identifier: String) {
        app.launchArguments = ["UITestingEnabled"]
        app.launchEnvironment["launchViewController"] = identifier
        app.launch()
    }
    
    func clickButton(identifier: String) {
        let button = app.buttons[identifier]
        button.tap()
    }
    
    func fillTextField(identifier: String, text: String) {
        let textField = app.textFields[identifier]
        textField.tap()
        textField.typeText(text)
    }
    
    func fillSecureTextFields(identifier: String, text: String) {
        let passwordTextField = app.secureTextFields[identifier]
        passwordTextField.tap()
        passwordTextField.typeText(text)
    }
    
    func existText(text: String) {
        let textLabel = app.staticTexts[text]
        XCTAssertTrue(textLabel.exists)
    }
    
    func showedViewWithTitle(identifier: String) {
        XCTAssert(app.navigationBars[identifier].exists)
    }
    
    func existAlert(title: String) {
        let alert = app.alerts.firstMatch
        
        // Waiting for alert to appear
        _ = alert.waitForExistence(timeout: TimeInterval(1))
        
        XCTAssertTrue(alert.exists)
        XCTAssertEqual(alert.label, title)
    }
}
