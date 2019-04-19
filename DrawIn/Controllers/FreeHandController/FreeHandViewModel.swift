//
//  FreeHandViewModel.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 15/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation
import UIKit

class FreeHandViewModel{
    
    var image = [UIImage?]()
    var title = [String]()
    var color = [UIColor]()
    let count: Int
    
    init() {
        let repository = TutorialRepository()
        let arrayInfo = repository.getFreeHandOptions()
        
        self.count = arrayInfo.count
        for info in arrayInfo{
            image.append(UIImage(named: info.image))
            title.append(info.title)
            color.append(UIColor(hex: info.color))//Colors.init(colorName: info.color).color)
        }
    }
}
