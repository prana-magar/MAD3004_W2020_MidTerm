//
//  Mobile.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class MobileBill: Bill {
    var id: String
    var date: Date
    var type: BillType
    var total: Float = 0
    var modelName: String
    var number: Int
    var usedGB: Float
    var usedMinutes: Float
    
    init(id: String, date: Date, type: BillType, modelName: String, number: Int, usedGB: Float, usedMinutes: Float) {
        self.id = id
        self.date = date
        self.type = type
        self.modelName = modelName
        self.number = number
        self.usedGB = usedGB
        self.usedMinutes = usedMinutes
        
    }
    
    func display() {
        print("Mobile")
    }
    

}
