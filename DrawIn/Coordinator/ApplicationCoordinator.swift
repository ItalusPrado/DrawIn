//
//  ApplicationCoordinator.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 13/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

class ApplicationCoordinator: Coordinator{
    
    let window: UIWindow
    
    let mainCoordinator: Coordinator
    
    init(window: UIWindow) {
        self.window = window
        
        self.mainCoordinator = TabBarCoordinator(window: window)
    }
    
    func start() {
        mainCoordinator.start()
        window.makeKeyAndVisible()
    }
}
