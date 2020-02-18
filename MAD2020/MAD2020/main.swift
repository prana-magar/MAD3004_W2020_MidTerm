//
//  main.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


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
var mobileBill1 = MobileBill(id: "fido_1",
                             date: Date(),
                             modelName: "Samsung s9",
                             number: 289456789,
                             usedGB: 4.6,
                             usedMinutes: 35.4,
                             provider: fidoPhoneProvider)

// Hydro bill 1
var hydroBill1 = HydroBill(id: "justenergy_1",
                           date: Date(),
                           agency: justEnergyHydroProvider,
                           unitConsumed: 45.3)

// customer 1
var ramCustomer = Customer(id: "C1",
                           firstName: "Ram",
                           lastName: "katel",
                           email: "ram@gmail.com")

// Adding one bill at a time
ramCustomer.addBill(bill: mobileBill1)
ramCustomer.addBill(bill: hydroBill1)



// For customer 2

var mobileBill2:Bill = MobileBill(id: "publicMobile_1",
                             date: Date(),
                             modelName: "iphone X",
                             number: 289445678,
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

var shyamCustomer = Customer(id: "C2",
                             firstName: "Shyam",
                             lastName: "pokhrel",
                             email: "shyam@fertl.com")

var shyamBills = [mobileBill2, internetBill2, hydroBill2]

// Adding all bills at once
shyamCustomer.addBill(bills: shyamBills)




// For customer 3

var mobileBill3 = MobileBill(id: "freedom_1",
                             date: Date(),
                             modelName: "Iphone 11",
                             number: 456457534,
                             usedGB: 3.3,
                             usedMinutes: 42,
                             provider: freedomMobilePhoneProvider)

var hariCustomer = Customer(id: "C3",
                            firstName: "Hari",
                            lastName: "ger",
                            email: "haribari@gert.com")

hariCustomer.addBill(bill: mobileBill3)


var customers = [ramCustomer, shyamCustomer, hariCustomer]


func getCustomerById(id: String) -> Customer? {
    for customer in customers{
        if(id == customer.id){
            return customer
        }
    }
    print("Customer with id \(id) not Found.")
    return nil
}

ramCustomer.display(withBill: true)





