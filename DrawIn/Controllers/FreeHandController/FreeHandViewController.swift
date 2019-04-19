//
//  FreeHandViewController.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 13/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import UIKit

class FreeHandViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let options = FreeHandViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nibCell = UINib(nibName: "MainCollectionViewCell", bundle: nil)
        self.collectionView.register(nibCell, forCellWithReuseIdentifier: "main")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }


}

extension FreeHandViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "main", for: indexPath) as! MainCollectionViewCell
        
        cell.title.text = options.title[indexPath.row]
        cell.title.backgroundColor = options.color[indexPath.row]
        cell.image.image = options.image[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width*0.7, height: self.view.frame.size.height/3)
    }
    
    
}
