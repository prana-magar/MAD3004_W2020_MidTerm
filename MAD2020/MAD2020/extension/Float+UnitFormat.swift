//
//  Float+UnitFormat.swift
//  MAD2020
//
//  Created by Prakash on 18/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
extension Float{
    func unitFormat() -> String{
        if self < 2 {
            return "\(self) unit"
        }
        else{
            return "\(self) units"
        }
        
    }
}
