//
//  MainCollectionViewCell.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 22/03/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        
//        self.layer.shadowColor = UIColor.black.cgColor
//        self.layer.shadowOpacity = 1
//        self.layer.shadowOffset = CGSize(width: 0, height: 3)
//        self.layer.shadowRadius = 10
//        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//        self.layer.shouldRasterize = true
    }

}
