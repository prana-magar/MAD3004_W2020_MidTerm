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
    var provider: InternetProvider
    var usedGB: Float
    var total: Float {
        get {
            return self.provider.calculateTotalBill(
                gbUsed: self.usedGB
            )
        }
        
    }
    
    
    init(id: String, date: Date, provider: InternetProvider, usedGB: Float) {
        self.id = id
        self.date = date
        self.provider = provider
        self.usedGB = usedGB
    }
    
    func display(addTab:Bool = false) {
        let printstr = [
            "***************************************",
            "ID: \(self.id)",
            "Date: \(self.date.printFormat())",
            "Type: \(self.type)",
            "Provider: \(self.provider.name)",
            "Used GB: \(self.usedGB.dataUsageFormat())",
            "Total: \(self.total.priceFormat())",
            "***************************************"
        ]
        
        for str in printstr{
            if addTab{ print("\t", terminator:"")}
            print(str)
        }
    }

}
