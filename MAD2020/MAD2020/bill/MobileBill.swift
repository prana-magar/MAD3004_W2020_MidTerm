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
    var number: String
    var usedGB: Float
    var usedMinutes: Float
    
    init(id: String, date: Date, modelName: String, number: String, usedGB: Float, usedMinutes: Float, provider: CellPhoneProvider) {
        
        do {
            try Validations.mobileNumber(number: number)
            self.number = number
        }
        catch PhoneNumberValidationError.voiletsMinLength {
            print("Phone number less than length of 7")
            self.number = ""
        }
        catch PhoneNumberValidationError.voiletsMaxLength{
            print("Phone number more than length of 16")
            self.number = ""
        }
        catch {
            print("Unknow erroe occure in phone validation \(error)")
            self.number = ""
        }
        
        self.id = id
        self.date = date
        self.modelName = modelName
        
        self.usedGB = usedGB
        self.usedMinutes = usedMinutes
        self.provider = provider
    }
    
    func display(addTab:Bool = false) {
        
        let printstr = [
            "***************************************",
            "ID: \(self.id)",
            "Date: \(self.date.printFormat())",
            "Type: \(self.type)",
            "Number: \(self.number)",
            "Provider: \(self.provider.name)",
            "Used GB: \(self.usedGB.dataUsageFormat())",
            "Used Min: \(self.usedMinutes.minUsageFormat())",
            "Model: \(self.modelName)",
            "Total: \(self.total.priceFormat())",
            "***************************************"
        ]
        
        for str in printstr{
            if addTab{ print("\t", terminator:"")}
            print(str)
        }
        
        
    }

    

}
