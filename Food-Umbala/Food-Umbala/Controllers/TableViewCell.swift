	//
//  TableViewCell.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/13/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    // MARK: *** Data model
    
    // MARK: *** UI Elements
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: *** UI events
    
    // MARK: *** Local variables
    
    // MARK: *** UIViewController
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
