//
//  Path.swift
//  ShahrMa
//
//  Created by parsa on 10/11/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class Path {

    static var path : String = ""
    
    static func setPath(path: String){
        self.path=path
    }
    
    static func getPath()-> String {
        return self.path
    }
    
}