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
    var type: BillType = BillType.Mobile
    var provider: CellPhoneProvider
    var total: Float {
        get {
            return self.provider.calculateTotalBill(
                gbUsed: self.usedGB,
                minuteUsed: self.usedMinutes )
        }
    }
    var modelName: String
    var number: Int
    var usedGB: Float
    var usedMinutes: Float
    
    init(id: String, date: Date, modelName: String, number: Int, usedGB: Float, usedMinutes: Float, provider: CellPhoneProvider) {
        self.id = id
        self.date = date
        self.modelName = modelName
        self.number = number
        self.usedGB = usedGB
        self.usedMinutes = usedMinutes
        self.provider = provider
    }
    
    func display() {
        print("*****************")
        print("ID: \(self.id)")
        print("Date: \(self.date)")
        print("Type: \(self.type)")
        print("Number: \(self.number)")
        print("Provider: \(self.provider.name)")
        print("Used GB: \(self.usedGB)")
        print("Used Min: \(self.usedMinutes)")
        print("Model: \(self.modelName)")
        print("Total: \(self.total)")
        print("*****************")
    }

    

}
