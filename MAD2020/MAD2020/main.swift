//
//  main.swift
//  MAD2020
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

var bb:Bill
bb = MobileBill(id: "1", date: Date(), type: BillType.Hydro, modelName: "Apple", number: 123123, usedGB: 5.6, usedMinutes: 56)


print(bb)

bb = InternetBill(id: "2", date: Date(), providerName: "Fido", usedGB: 54.33)
print(bb)


bb = HydroBill(id: "4", date: Date(), agencyName: "TORONTOH", unitConsumed: 44.9)
print(bb)
