//
//  StateObserved.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import SwiftUI


struct StateObserved: View {
    @StateObject var modelData = StateModelData()
   // @ObservedObject var modelData = StateModelData()

    var body: some View {
        NavigationView {
            VStack {
                Text("Name: \(modelData.name)")
                Text("Age: \(modelData.age)")
                        
                NavigationLink(destination: ProfielView(userData: modelData), label: {
                        Text("Edit Profile")
                    })
                }
                .navigationTitle("Home")
            }
    }
}

struct StateObserved_Previews: PreviewProvider {
    static var previews: some View {
        StateObserved()
    }
}
