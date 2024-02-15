//
//  LandmarkDetail.swift
//  SwiftUITuts
//
//  Created by Varshney on 15/10/23.
//

import SwiftUI

struct LandmarkDetail: View {
    //var landmark: Landmark
    private let gallery = ["Camera", "Download", "Album"]
    @State private var selectedIndex = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedIndex, label: Text("Select Gallery")) {
                ForEach(0 ..< gallery.count) {
                    Text(self.gallery[$0])
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

/*
extension LandmarkDetail {
    func circleView() {
        CircleImage(image: landmark.image)
                    .offset(y: 30)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }
                .padding()
                Spacer()
                    
            
    }
}*/

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        //LandmarkDetail(landmark: landmarks[1])
        LandmarkDetail()
    }
}
