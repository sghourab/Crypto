//
//  UIApplication.swift
//  Crypto
//
//  Created by Summer Crow on 2022-05-06.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
