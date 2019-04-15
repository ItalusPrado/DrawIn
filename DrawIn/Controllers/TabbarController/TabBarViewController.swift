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
        
        self.tabBar.barTintColor = UIColor(hex: 0x2A2A2A)
        self.tabBar.tintColor = UIColor(hex: 0x1BAFF9)
        self.tabBar.unselectedItemTintColor = .white
    }

}
