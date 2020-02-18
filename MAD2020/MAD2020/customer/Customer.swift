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
    var number: String
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
    
    
    init?(id: String, firstName: String, lastName: String, email: String, number: String){
        
        // Email validations
        do{
            try Validations.email(email: email)
        }
        catch EmailValidationError.isNotValidEmail{
            print("Not valid email.")
            return nil
        }
        catch EmailValidationError.isEmpty{
            print("Email passed is Empty.")
            return nil
        }
        catch EmailValidationError.isNotValidLength{
            print("Email not valid length")
            return nil
        }
        catch {
            print("Unknow Error \(error)")
            return nil
        }
        
        
        // Number validations
        do{
            try Validations.mobileNumber(number: number)
        }
        catch PhoneNumberValidationError.voiletsMinLength {
            print("Phone number less than length of 7")
            return nil
        }
        catch PhoneNumberValidationError.voiletsMaxLength{
            print("Phone number more than length of 16")
            return nil
        }
        catch {
            print("Unknow erroe occure in phone validation \(error)")
            return nil
            
        }
        
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.number = number
    }
    
    
    func calculateTotalBill() -> Float{
        var total = Float(0.0)
        for(_, bill) in self.bills{
            total += bill.total
        }
        return total
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
    
    func findBillById(id: String) -> Bill?{
        for (_, bill) in bills{
            if bill.id == id{
                return bill
            }
        }
        return nil
    }
    
    subscript(id: String) -> Bill?{
        get{
            return findBillById(id: id)
        }
    }
    
    func display(addTab:Bool = false) {
        
        let printstr = [
            "\n*****************",
            "ID: \(self.id)",
            "Full Name: \(self.fullName)",
            "email: \(self.email)",
            "Total: \(self.totalBill.priceFormat())",
            "*****************"
        ]
        
        for str in printstr{
            if addTab{ print("\t", terminator:"")}
            print(str)
        }
    }
    
    func display(addTab:Bool = false, withBill:Bool = false){
        self.display(addTab: addTab)
        if(withBill){
            print("-----Bill Information-----")
            for(_,bill) in self.bills{
                bill.display(addTab: true)
            }
        }
    }
    
}
