//
//  Float+PriceFormat.swift
//  MAD2020
//
//  Created by Prakash on 18/02/20.
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
}
