//
//  ViewControllerExtension.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/18/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//
import UIKit

extension TableViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        return model[collectionView.tag].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
                                                      for: indexPath as IndexPath)
        
        cell.backgroundColor = model[collectionView.tag][indexPath.item]
//        print(cell)
        let cellCollect = cell as! TablesCollectionViewCell
        cellCollect.imgColllecCell.image = UIImage(named: "Areas")
        cellCollect.lblCollecCell.text = "Hello"
        
        return cell
    }
}
