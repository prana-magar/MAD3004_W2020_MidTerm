//
//  InternetBill.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class InternetBill: Bill {
    var id: String
    var date: Date
    var type: BillType = BillType.Internet
    var total: Float = 0
    var provider: InternetProvider
    var usedGB: Float
    
    init(id: String, date: Date, provider: InternetProvider, usedGB: Float) {
        self.id = id
        self.date = date
        self.provider = provider
        self.usedGB = usedGB
    }

    func calculateTotal() -> Float {
        return self.usedGB
    }
    
    
}
