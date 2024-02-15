//
//  EnvironmentView3.swift
//  SwiftUITuts
//
//  Created by Varshney on 07/11/23.
//

import SwiftUI

struct EnvironmentView3: View {
    @EnvironmentObject var model: StateModelData
    @EnvironmentObject var userModel: UserData
    
    var body: some View {
        VStack {
             Text("\(model.name)")
            Text("\(model.age)")
            Text("\(userModel.lastName)")
        }
    }
}

struct EnvironmentView3_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView3()
            .environmentObject(StateModelData())
    }
}
