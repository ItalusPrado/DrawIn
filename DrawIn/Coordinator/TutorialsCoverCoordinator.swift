//
//  TutorialsCoverCoordinator.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 13/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

class TutorialsCoverCoordinator: Coordinator{
    
    let navigationController = NavigationViewController()
    var tutorialsViewController: TutorialsMainViewController!
    
    init() {
        
    }
    
    func start() {
        
        tutorialsViewController = TutorialsMainViewController()
        tutorialsViewController.title = "Tutorials"
        navigationController.tabBarItem = UITabBarItem(
            title: "Tutorials",
            image: UIImage(named: "tutorials_selected_icon"),
            selectedImage: nil
        )
        self.navigationController.viewControllers = [tutorialsViewController]
    }
    
    
    
}
