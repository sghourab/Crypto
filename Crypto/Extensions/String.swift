//
//  String.swift
//  Crypto
//
//  Created by Summer Crow on 2022-05-20.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
