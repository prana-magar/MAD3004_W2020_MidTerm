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




