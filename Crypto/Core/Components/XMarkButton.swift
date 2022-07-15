//
//  XMarkButtong.swift
//  Crypto
//
//  Created by Summer Crow on 2022-05-11.
//

import SwiftUI



struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
        }
    }
}

struct XMarkButtong_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
