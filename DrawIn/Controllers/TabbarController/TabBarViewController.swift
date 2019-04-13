//
//  TabBarViewController.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 02/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let controllers = [TutorialsMainViewController()]
        self.viewControllers = controllers

        
    }

}
