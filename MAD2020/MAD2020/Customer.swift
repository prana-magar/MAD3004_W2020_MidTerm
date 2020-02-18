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
}
