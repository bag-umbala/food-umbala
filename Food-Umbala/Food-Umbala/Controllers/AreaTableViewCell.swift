//
//  AreaTableViewCell.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/19/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

class AreaTableViewCell: UITableViewCell {
    // MARK: *** Data model
    
    // MARK: *** UI Elements
    @IBOutlet weak var AreaImg: UIImageView!
    @IBOutlet weak var NameAreaLbl: UILabel!
    @IBOutlet weak var NumTableInAreaLbl: UILabel!
    
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
