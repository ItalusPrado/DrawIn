//
//  FreeHandCoordinator.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 13/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

class FreeHandCoordinator: Coordinator {
    
    let navigationController = NavigationViewController()
    var tutorialsViewController: FreeHandViewController!
    
    init() {
        
    }
    
    func start() {
        tutorialsViewController = FreeHandViewController()
        tutorialsViewController.title = "Freehand"
        navigationController.tabBarItem = UITabBarItem(
            title: "Freehand",
            image: UIImage(named: "freehand_selected_icon"),
            selectedImage: nil
        )
        self.navigationController.viewControllers = [tutorialsViewController]
    }
}
