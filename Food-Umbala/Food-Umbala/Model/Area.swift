//
//  Area.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/21/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import Foundation

class Area {
    var id : Int32
    var name : String
    
    init(name: String) {
        self.id = -1
        self.name = name
    }
    
    init(id: Int32, name: String) {
        self.id = id
        self.name = name
    }
}
