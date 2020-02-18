//
//  Bill.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

protocol Bill: Display , CustomStringConvertible{
    var id: String {get set}
    var date: Date {get set}
    var type: BillType {get set}
    var total: Float{get}
    
}

extension Bill{
    func display(addTab:Bool = false) {
        let printstr = [
            "***************************************",
            "ID: \(self.id)",
            "Date: \(self.date.printFormat())",
            "Type: \(self.type)",
            "Total: \(self.total.priceFormat())",
            "***************************************"
        ]
        
        for str in printstr{
            if addTab{ print("\t", terminator:"")}
            print(str)
        }
    }
}
