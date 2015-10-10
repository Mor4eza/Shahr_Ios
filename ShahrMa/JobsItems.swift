//
//  JobsItems.swift
//  shahre_MA
//
//  Created by Morteza on 10/5/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import UIKit

struct JobsItems {
    var name:String?
    var id: Int
    var subsetId: Int
    
    init(name: String? , id: Int, subsetid: Int){
        self.name = name
        self.id = id
        self.subsetId = subsetid
    }
}
