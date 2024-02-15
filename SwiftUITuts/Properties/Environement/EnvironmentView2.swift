//
//  EnvironmentView2.swift
//  SwiftUITuts
//
//  Created by Varshney on 07/11/23.
//

import SwiftUI

struct EnvironmentView2: View {
    @EnvironmentObject var model: UserData
    
    var body: some View {
        VStack {
            TextField("lastName UserData ", text: $model.lastName)
                .textFieldStyle(.roundedBorder)
            NavigationLink(destination: EnvironmentView3(), label: {
                Text("Edit Profile3")
            })
        }
        .padding(50)

    }
}

struct EnvironmentView2_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView2()
    }
}
