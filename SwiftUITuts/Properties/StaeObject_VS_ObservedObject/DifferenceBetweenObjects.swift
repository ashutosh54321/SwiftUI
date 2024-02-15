//
//  DifferenceBetweenObjects.swift
//  SwiftUITuts
//
//  Created by Varshney on 07/11/23.
//

import SwiftUI

class ObservedData: ObservableObject {
    @Published var name = "user name"
    var age = "18"
    var type: String = "N/A"
    
    init(type: String) {
        self.type = type
        self.age = UUID().uuidString
        print("init \(self.type)")
    }
    
    deinit {
        print("deinit \(self.type)")
    }
}


struct DifferenceBetweenObjects: View {
    @State var count = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
            StateObjectView()
            ObservedObjectView()
            
            Button(action: {
                count += 1
            }, label: {
                Text("tap-> \(count)")
                    .font(.title)
                    .foregroundColor(.red)
                
            })
        }
        
    }
    
    
}



struct StateObjectView: View {
    @StateObject var modelData = ObservedData(type: "StateObject")
    var body: some View {
        Text("\(modelData.age)")
            .foregroundColor(.orange)
        
    }
}


struct ObservedObjectView: View {
    @ObservedObject var modelData = ObservedData(type: "Observed Object" )
    var body: some View {
        Text("\(modelData.age)")
            .foregroundColor(.red)
    }
}
