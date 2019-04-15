//
//  NavigationViewController.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 22/03/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //setNeedsStatusBarAppearanceUpdate()
        self.navigationBar.barTintColor = UIColor(hex: 0x2A2A2A)
        self.navigationBar.tintColor = .white
        self.navigationBar.isTranslucent = false
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }

}
