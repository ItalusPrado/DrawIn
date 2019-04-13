//
//  TutorialsMainViewController.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 22/03/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit
import AnimatedCollectionViewLayout

class TutorialsMainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let tutorials = TutorialMainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

        let layout = AnimatedCollectionViewLayout()
        layout.animator = LinearCardAttributesAnimator()
        layout.scrollDirection = .horizontal
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.collectionViewLayout = layout
        
        let nibCell = UINib(nibName: "MainCollectionViewCell", bundle: nil)
        self.collectionView.register(nibCell, forCellWithReuseIdentifier: "main")
        
    }

}

extension TutorialsMainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "main", for: indexPath) as! MainCollectionViewCell
        
        cell.title.text = tutorials.title[indexPath.row]
        cell.title.backgroundColor = tutorials.color[indexPath.row]
        cell.image.image = tutorials.image[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height-50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
