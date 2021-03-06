//
//  main.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

var customers = [Customer]()
// All CellPhoneProviders
var fidoPhoneProvider = CellPhoneProvider(name: "FIDO",
                             baseRate: 10,
                             gbUsedRate: 5.0,
                             minuteUsedRate: 2)

var publicMobilePhoneProvider = CellPhoneProvider(name: "Public Mobile",
                                                    baseRate: 7,
                                                    gbUsedRate:4.0,
                                                    minuteUsedRate: 1.5)

var freedomMobilePhoneProvider = CellPhoneProvider(name: "Freedom",
                                                       baseRate: 8,
                                                       gbUsedRate:7.0,
                                                       minuteUsedRate: 4.5)
// All InternetProviders

var bellInternetProvider = InternetProvider(name: "Bell",
                                            baseRate: 10,
                                            gbUsedRate: 0.5)

var rogersInternetProvider = InternetProvider(name: "Rogers",
                                            baseRate: 7,
                                            gbUsedRate: 0.9)

// All HydroProviders

var justEnergyHydroProvider = HydroProvider(name: "Just Energy",
                                            baseRate: 5,
                                            unitRate: 5.5)



// For customer 1
// Mobile bill 1


// Specify date components
var dateComponents = DateComponents()
dateComponents.year = 2019
dateComponents.month = 7
dateComponents.day = 11

// Create date from components
let userCalendar = Calendar.current
let date1 = userCalendar.date(from: dateComponents)
var mobileBill1 = MobileBill(id: "fido_1",
                             date: date1!,
                             modelName: "Samsung s9",
                             number: "289456789",
                             usedGB: 4.6,
                             usedMinutes: 35.4,
                             provider: fidoPhoneProvider)

// Hydro bill 1
var hydroBill1 = HydroBill(id: "justenergy_1",
                           date: date1!.addingTimeInterval(1231232312),
                           agency: justEnergyHydroProvider,
                           unitConsumed: 45.3)

// customer 1
var ramCustomer: Customer

if let ramCustomer = Customer(id: "C1",
                       firstName: "Ram",
                       lastName: "katel",
                       email: "ram@gmail.com",
                       number: "12312312"){
    // Adding one bill at a time
    ramCustomer.addBill(bill: mobileBill1)
    ramCustomer.addBill(bill: hydroBill1)
    customers.append(ramCustomer)
    
}





// For customer 2

var mobileBill2:Bill = MobileBill(id: "publicMobile_1",
                             date: Date(),
                             modelName: "iphone X",
                             number: "289445678",
                             usedGB: 5.9,
                             usedMinutes: 55.3,
                             provider: publicMobilePhoneProvider)

var internetBill2:Bill = InternetBill(id: "bell_1",
                                 date: Date(),
                                 provider: bellInternetProvider,
                                 usedGB: 67.8)

var hydroBill2:Bill = HydroBill(id: "justenergy_2",
                           date: Date(),
                           agency: justEnergyHydroProvider,
                           unitConsumed: 55.3)



if let shyamCustomer =  Customer(id: "C2",
                             firstName: "Shyam",
                             lastName: "pokhrel",
                             email: "shyam@fertl.com",
                             number: "12345678")
{
    let shyamBills = [mobileBill2, internetBill2, hydroBill2]
    // Adding all bills at once
    shyamCustomer.addBill(bills: shyamBills)
    customers.append(shyamCustomer)
}






// For customer 3

var mobileBill3 = MobileBill(id: "freedom_1",
                             date: Date(),
                             modelName: "Iphone 11",
                             number: "456457534",
                             usedGB: 3.3,
                             usedMinutes: 42,
                             provider: freedomMobilePhoneProvider)




if let hariCustomer = Customer(id: "C3",
                        firstName: "Hari",
                        lastName: "ger",
                        email: "haribari@gert.com",
                        number: "232423111")
{
    hariCustomer.addBill(bill: mobileBill3)
    customers.append(hariCustomer)
}






func getCustomerById(id: String) -> Customer? {
    for customer in customers{
        if(id == customer.id){
            return customer
        }
    }
    print("Customer with id \(id) not Found.")
    return nil
}


// Printing all Customers and their Bills
for customer in customers{
    customer.display(withBill: true)
}


// Finding customers with customer id
print("\n\n Trying to find customer with customer id c1")
if let cc = getCustomerById(id: "C1"){
    print("Found customer with given id:")
    cc.display()
    
    // Removing bill from customer
    print("\n\n REmoving bill with id fido_1 from customer C1")
    print("bills before removing: ")
    cc.display(withBill: true)
    cc.removeBill(id: "fido_1")
    print("\n Bills after removing")
    cc.display(withBill: true)
}

print("\n\n Trying to find customer with customer id C2")
if let cc = getCustomerById(id: "C2"){
    print("Found customer with given id along with bill details")
    cc.display(withBill: true)
}


print("\n\n Trying to find customer with customer id c9")
if let cc = getCustomerById(id: "c9"){
    print("Found customer with given id:")
    cc.display()
}


// searching bill in Shyam customer

// bill not found
var billId = "bell_3"
print("\n\nTrying to find bill with id: \(billId) in customer with id: C2")
if let c = getCustomerById(id: "C2"){
    if c[billId] != nil {
        print("bill found with id \(billId) for customer \(c.id) : ")
        c[billId]!.display()
    }
    else {
        print("No bill found with id \(billId) for customer \(c.id)")
    }
}

// if bill exists
billId = "bell_1"
print("\n\nTrying to find bill with id: \(billId) in customer with id: C2")
if let c = getCustomerById(id: "C2"){
    if c[billId] != nil {
        print("bill found with id \(billId) for customer \(c.id) : ")
        c[billId]!.display()
    }
    else {
        print("No bill found with id \(billId) for customer \(c.id)")
    }
}


// Doesnt allow to create object if email is not valid

print("\n\nTrying to create cusomer with illegal email")
var illegalCustomerObject = Customer(id: "C2",
                                     firstName: "Shyam",
                                     lastName: "pokhrel",
                                     email: "fertl.com",
                                     number: "12345678")
if(illegalCustomerObject == nil){
    print("Customer object not allowed with invalid email")
}

// Doesnt allow to create Customer object if phone number is invalid
print("\n\nTrying to create cusomer with illegal Phone number")
var illegalCustomerObject2 = Customer(id: "C2",
                                     firstName: "Shyam",
                                     lastName: "pokhrel",
                                     email: "fert@l.com",
                                     number: "12")
if(illegalCustomerObject == nil){
    print("Customer object not allowed with invalid Phone number")
}

// customers sorted by total bill
print("\n\n Printing sorted customers")
customers.sort { (c1, c2) -> Bool in
    return c1.totalBill > c2.totalBill
}
for customer in customers{
    customer.display()
}

// customer with no bills
print("\n\nPrinting customer with no bills")
if let c4 = Customer(id: "C4",
                     firstName: "Osin",
                     lastName: "Sitaula",
                     email: "abc@ttaer.com",
                     number: "984747555"){
    c4.display(withBill: true)
}




