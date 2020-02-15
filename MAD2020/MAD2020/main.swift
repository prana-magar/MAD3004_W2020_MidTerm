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
