//
//  Colors.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 03/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

struct Colors {
    
    let color: UIColor
    
    init(colorName: String) {
        switch colorName {
        case "yellow":
            self.color = .yellow
        case "green":
            self.color = .green
        case "purple":
            self.color = .purple
        case "blue":
            self.color = .blue
        case "red":
            self.color = .red
        default:
            self.color = .gray
        }
    }
}
