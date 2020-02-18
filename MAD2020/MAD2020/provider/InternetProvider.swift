//
//  InternetProvider.swift
//  MAD2020
//
//  Created by Prakash on 18/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

struct InternetProvider {
    var name: String
    var baseRate: Float
    var gbUsedRate: Float
    
    func calculateTotalBill(gbUsed: Float) -> Float {
        return baseRate + (gbUsed * self.gbUsedRate)
    }
}
