//
//  TableViewCellExtension.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/13/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

extension TableViewCell {
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
//        collectionView.cellForItem(at: 1)
        collectionView.tag = row
        collectionView.setContentOffset(collectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
        collectionView.reloadData()
    }
    
    var collectionViewOffset: CGFloat {
        set { collectionView.contentOffset.x = newValue }
        get { return collectionView.contentOffset.x }
    }
    
//    //MARK: - COLLECTIONVIEW DELEGATE AND DATASOURCE
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
//        
//        //YOU CAN FIRE DELEGATE
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
//    {
//        return 8
//        
//    }
//    
//    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
//    {
//        let cellCollect = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TablesCollectionViewCell
//            cellCollect.imgColllecCell.image = UIImage(named: "Areas")
//            cellCollect.lblCollecCell.text = "Hello"
//        
//        return cellCollect
//    }
}
