//
//  SceneDelegate.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        setupWindow(windowScene: windowScene)
    }
    
    private func setupWindow(windowScene: UIWindowScene) {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        
        window?.rootViewController = TabBarViewController()
    }

}

