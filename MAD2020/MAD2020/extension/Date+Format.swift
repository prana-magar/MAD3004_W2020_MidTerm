//
//  Date+Format.swift
//  MAD2020
//
//  Created by Prakash on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


extension Date{
    func printFormat(format: String = "EEEE, dd MMMM, yyyy") -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_CA")
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
