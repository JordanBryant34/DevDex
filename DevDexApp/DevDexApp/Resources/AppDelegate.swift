//
//  AppDelegate.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        CardController.shared.loadFromPersistence()
        
        return true
    }

}

