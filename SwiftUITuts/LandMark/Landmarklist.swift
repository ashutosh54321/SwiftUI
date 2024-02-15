//
//  Landmarklist.swift
//  SwiftUITuts
//
//  Created by Varshney on 15/10/23.
//

import SwiftUI

struct Landmarklist: View {
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 100, style: .continuous)
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.red)
            Text("KKKKK")
            
        }
       
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        /*
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }*/
    }
}

struct Landmarklist_Previews: PreviewProvider {
    static var previews: some View {
        Landmarklist()
    }
}
