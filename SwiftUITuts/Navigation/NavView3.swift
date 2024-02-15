//
//  NavView3.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import SwiftUI

struct NavView3: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .center) {
            Button("Dismiss Modal") {
                dismiss()
            }
            Spacer()
            Text("View 3")
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .navigationTitle("Third Title")
    }
   
}

struct NavView3_Previews: PreviewProvider {
    static var previews: some View {
        NavView3()
    }
}
