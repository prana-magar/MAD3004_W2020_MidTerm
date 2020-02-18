//
//  Customer.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Customer: Display, CustomStringConvertible {
    var id: String
    var firstName: String
    var lastName: String
    lazy var bills: [String: Bill] = [String: Bill]()
    var fullName: String {
        get{
           return "\(firstName) \(lastName)"
        }
    }
    
    var email: String
    var totalBill: Float {
        get{
            return calculateTotalBill()
        }
    }
    
    
    init(id: String, firstName: String, lastName: String, email: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    func display() {
        print(self.description)
    }
    
    func calculateTotalBill() -> Float{
        return 0
    }
    
    func addBill(bill: Bill){
        let billID: String = bill.id
        if self.bills.keys.contains(billID){
            print("Bill with bill ID:\(billID) is already present. Updating with new value")
        }
        self.bills.updateValue(bill, forKey: billID)
    }
    
    func addBill(bills: [Bill]) {
        for bill in bills{
            self.addBill(bill: bill)
        }
    }
    
}
