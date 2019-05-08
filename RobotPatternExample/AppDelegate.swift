//
//  AppDelegate.swift
//  RobotPatternExample
//
//  Created by Hildequias Silas dos Santos Junior on 4/25/19.
//  Copyright © 2019 Hildequias Silas dos Santos Junior. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        if NSClassFromString("XCTestCase") != nil {
            return true
        }
        
        if ProcessInfo.processInfo.arguments.contains("UITestingEnabled") {
            if let launchViewController = ProcessInfo.processInfo.environment["launchViewController"],
                let screen = LaunchScreen(rawValue: launchViewController) {
                let viewController = self.viewController(for: screen)
                setupWindow(rootViewController: UINavigationController(rootViewController: viewController))
            } else {
                // Default state if we've forgotten to pass a launchViewController or it's not a valid LaunchScreen
                setupWindow(rootViewController: UIViewController())
            }
            
            return true
        }
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    enum LaunchScreen: String {
        case loginView
        case homeView
    }
    
    private func viewController(for screen: LaunchScreen) -> UIViewController {
        switch screen {
        case .loginView:
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginView")
        case .homeView:
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeView")
        }
    }
    
    private func setupWindow(rootViewController: UIViewController) {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()
    }
}

