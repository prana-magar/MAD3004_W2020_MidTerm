//
//  CustomStringConvertible+Additions.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

extension CustomStringConvertible {
    var description: String {
        var description: String = ""
        
        let selfMirror = Mirror(reflecting: self)
        
        for child in selfMirror.children {
            if let propertyName = child.label {
                description += "\(propertyName): \(child.value),\n"
            }
        }
        
        return description
    }
}
