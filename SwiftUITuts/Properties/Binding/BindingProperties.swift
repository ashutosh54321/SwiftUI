//
//  BindingProperties.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import SwiftUI

struct BindingProperties: View {
    @State private var text1 = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text1)
            Button("Update text") {
                text1 = "New text"
            }
            SubView(text: $text1)
        }
    }
}

struct BindingProperties_Previews: PreviewProvider {
    static var previews: some View {
        BindingProperties()
    }
}


