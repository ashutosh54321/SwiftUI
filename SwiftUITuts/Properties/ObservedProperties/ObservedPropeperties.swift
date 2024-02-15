//
//  ObservedPropeperties.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import SwiftUI

struct ObservedPropeperties: View {
    @ObservedObject var userData = UserData()
    @State var userName: String = "ashut"
    
    var body: some View {
        VStack {
            VStack {
                Text("Hello, \(userData.name)!")
                TextField("Enter your name", text: $userData.name)
            }
            VStack {
                Text("Hi, \(userName)!")
                TextField("Enter your last", text: $userName)
            }
        }
    }
}

struct ObservedPropeperties_Previews: PreviewProvider {
    static var previews: some View {
        ObservedPropeperties()
    }
}
