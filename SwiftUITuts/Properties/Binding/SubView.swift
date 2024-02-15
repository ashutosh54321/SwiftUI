//
//  SubView.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import SwiftUI

struct SubView: View {
    @Binding var text: String

    var body: some View {
        Text(text)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(text: .constant("q"))
    }
}
