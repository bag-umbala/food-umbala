//
//  MenuTableViewCell.swift
//  Food-Umbala
//
//  Created by Nam Vo on 4/13/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var menuItemImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
