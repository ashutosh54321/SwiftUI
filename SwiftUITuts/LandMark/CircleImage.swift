//
//  CircleImage.swift
//  SwiftUITuts
//
//  Created by Varshney on 15/10/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("img1"))
    }
}
