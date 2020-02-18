//
//  Provider.swift
//  MAD2020
//
//  Created by Prakash on 17/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

struct CellPhoneProvider {
    var name: String
    var baseRate: Float
    var gbUsedRate: Float
    var minuteUsedRate: Float
    
    func calculateTotalBill(gbUsed: Float, minuteUsed: Float) -> Float {
        return baseRate + (minuteUsed * self.minuteUsedRate) + (gbUsed * self.gbUsedRate)
    }
}


