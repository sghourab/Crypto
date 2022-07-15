//
//  Double.swift
//  Crypto
//
//  Created by Summer Crow on 2022-04-11.
//

import Foundation

extension Double {
    
    // Converts a Double into a Currency with 2 decimal places
    
    /// ```
    /// Convert 1234.56 to $1,234.56

    ///
    /// ```
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    // Converts a Double into a Currency as a String with 2 decimal places
    
    /// ```
    /// Convert 1234.56 to "$1,234.56"

    ///
    /// ```
    func asCurrencywith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "0.00"
    }
    // Converts a Double into a Currency with 2-6 decimal places
    
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 12.3456 to $12.3456
    /// Convert 0.123456 to $0.123456
    ///
    /// ```
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    // Converts a Double into a Currency as a String with 2-6 decimal places
    
    /// ```
    /// Convert 1234.56 to "$1,234.56"
    /// Convert 12.3456 to "$12.3456"
    /// Convert 0.123456 to "$0.123456"
    ///
    /// ```
    func asCurrencywith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "0.00"
    }
    
    // Converts a Double into string representation
    
    /// ```
    /// Convert 1234.56 to "$1,23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    // Converts a Double into string representation with percent symbol
    
    /// ```
    /// Convert 1234.56 to "$1,23%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""

        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()

        default:
            return "\(sign)\(self)"
        }
    }
}
