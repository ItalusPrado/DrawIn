//
//  TabBarCoordinator.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 13/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator{
    
    var childCoordinators = [Coordinator]()
    let window: UIWindow
    
    var tabBarController: UITabBarController!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        let tutorialsCoordinator = TutorialsCoverCoordinator()
        childCoordinators.append(tutorialsCoordinator)
        tutorialsCoordinator.start()
        
        let freeHandCoordinator = FreeHandCoordinator()
        childCoordinators.append(freeHandCoordinator)
        freeHandCoordinator.start()
        
        self.tabBarController = TabBarViewController()
        self.tabBarController.viewControllers = [tutorialsCoordinator.navigationController,freeHandCoordinator.navigationController]
        self.window.rootViewController = self.tabBarController
        
    }
    
    
    
}
