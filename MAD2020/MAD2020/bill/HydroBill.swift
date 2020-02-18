//
//  HydroBill.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class HydroBill: Bill {
    var id: String
    var date: Date
    var type: BillType = BillType.Hydro
    var total: Float {
        get {
            return self.agency.calculateTotalBill(
                unitConsumed: self.unitConsumed)
        }
    }
    var agency: HydroProvider
    var unitConsumed: Float
    
    init(id: String, date: Date, agency: HydroProvider, unitConsumed: Float) {
        self.id = id
        self.date = date
        self.agency = agency
        self.unitConsumed = unitConsumed
    }
    
    
    func display(addTab:Bool = false) {
        let printstr = [
            "*****************",
            "ID: \(self.id)",
            "Date: \(self.date)",
            "Type: \(self.type)",
            "Agency: \(self.agency.name)",
            "Units: \(self.unitConsumed)",
            "Total: \(self.total)",
            "*****************"
        ]
        
        for str in printstr{
            if addTab{ print("\t", terminator:"")}
            print(str)
        }
        
        
    }
    
}
