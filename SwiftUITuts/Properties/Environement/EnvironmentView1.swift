//
//  EnvironmentView1.swift
//  SwiftUITuts
//
//  Created by Varshney on 07/11/23.
//

import SwiftUI

struct EnvironmentView1: View {
    @StateObject var modelData = StateModelData()
    @StateObject var userModel = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: EnvironmentView2(), label: {
                    Text("Edit Profile")
                })
                TextField("userName", text: $modelData.name)
                    .textFieldStyle(.roundedBorder)
                //ProfielView(userData: modelData)
            }
            .padding(50)
        }
        .environmentObject(modelData)
        .environmentObject(userModel)
        .navigationTitle("Home")

    }
}

struct EnvironmentView1_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView1()
    }
}
