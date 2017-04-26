//
//  MenuItem.swift
//  Food-Umbala
//
//  Created by Nam Vo on 4/17/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

class MenuItem {

    //MARK: Properties
    var name: String
    var price: Float
    var photo: UIImage?
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, price: Float) {
        
        // Initialization should fail if there is no name or if price is negative.
        if name.isEmpty || price < 0  {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.price = price
        self.photo = photo
    }
}
