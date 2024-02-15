//
//  NavView2.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import SwiftUI

struct NavView2: View {
    @State var showModal = false
    let name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 50) {
            Text("selected name \(name)")
            Button("Dismiss Modal") {
                dismiss()
            }
            .padding(50)
            .background(.orange)
            
            NavigationLink(destination: NavView3()) {
                Text("Go To Child of Screen 3")
            }
            .frame(width: 200, height: 50)
            .background(.red)
            .navigationTitle("Screen 3")
            .padding(50)
            
            Button(action: { showModal = true }) {
                Text("My Button")
            }
            .padding(50)
            .fullScreenCover(isPresented: $showModal) {
                NavView3()
            }
            .background(.orange)
        }
        .navigationTitle("Second Title")
        .background(.green)
    }
    
}

struct NavView2_Previews: PreviewProvider {
    static var previews: some View {
        NavView2(name: "text")
    }
}
