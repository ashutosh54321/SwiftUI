//
//  ProfielView.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import SwiftUI

struct ProfielView: View {
    @ObservedObject var userData: StateModelData
    
    var body: some View {
        Form {
            TextField("Name", text: $userData.name)
            Stepper("Age: \(userData.age)", value: $userData.age)
        }
        .navigationTitle("Profile")
    }
}

struct ProfielView_Previews: PreviewProvider {
    static var previews: some View {
        ProfielView(userData: StateModelData())
    }
}
