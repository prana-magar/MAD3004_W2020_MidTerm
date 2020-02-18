//
//  HydroProvider.swift
//  MAD2020
//
//  Created by Prakash on 18/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

struct HydroProvider {
    var name: String
    var baseRate: Float
    var unitRate: Float
    
    func calculateTotalBill(unitConsumed: Float) -> Float {
        return baseRate + (unitConsumed * self.unitRate)
    }
}
