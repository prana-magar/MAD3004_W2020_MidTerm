//
//  Float+Extensions.swift
//  MAD2020
//
//  Created by Prakash on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
extension Float{
    func priceFormat(locale: Locale =  Locale.current) -> String{
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .currency
        if let formattedPrice = formatter.string(from: self as NSNumber) {
            return formattedPrice
        }
        return ""
    }
    
    func unitFormat() -> String{
        if self < 2 {
            return "\(self) unit"
        }
        else{
            return "\(self) units"
        }
        
    }
    
    func dataUsageFormat() -> String{
        return "\(self) GB"
    }
    
    func minUsageFormat() -> String{
        return "\(self) Minutes"
    }
}
