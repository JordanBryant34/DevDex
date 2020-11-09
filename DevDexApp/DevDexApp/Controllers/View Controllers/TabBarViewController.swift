//
//  TabBarViewController.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    private func setupTabBar() {

        let drawCardsController = DrawCardsViewController()
        let ownedCardsController = OwnedCardsViewController()
        
        setViewControllers([drawCardsController, ownedCardsController], animated: true)
        
        drawCardsController.tabBarItem = UITabBarItem(title: "Draw Cards", image: nil, selectedImage: nil)
        ownedCardsController.tabBarItem = UITabBarItem(title: "Your Cards", image: nil, selectedImage: nil)
        
        tabBar.barTintColor = .devDexDarkBlue()
        tabBar.tintColor = .systemIndigo
        tabBar.isTranslucent = false
    }

}
