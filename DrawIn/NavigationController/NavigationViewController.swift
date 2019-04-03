//
//  NavigationViewController.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 22/03/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let main = TutorialsMainViewController()
        self.viewControllers = [main]
        
        
    }

}
