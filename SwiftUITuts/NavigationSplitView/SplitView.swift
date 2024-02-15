//
//  SplitView.swift
//  SwiftUITuts
//
//  Created by Varshney on 06/11/23.
//

import SwiftUI

struct SplitView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("New secondary")
            } label: {
                Text("Hello, World!")
            }
            .navigationTitle("Primary")

            Text("Secondary======")
        }
    }
}

struct SplitView_Previews: PreviewProvider {
    static var previews: some View {
        SplitView()
    }
}
