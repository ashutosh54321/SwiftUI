//
//  NavView1.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import SwiftUI

struct NavView1: View {
    @Binding var isPresented: Bool
    @State var showModal = false
//    init() {
//        let coloredNavAppearance = UINavigationBarAppearance()
//        coloredNavAppearance.configureWithOpaqueBackground()
//        coloredNavAppearance.backgroundColor = .systemGreen
//        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//         coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//         UINavigationBar.appearance().standardAppearance = coloredNavAppearance
//         UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
//    }
    
    var body: some View {
        NavigationView {
        VStack {
                NavigationLink(destination: NavView2(name: "from screen1")) {
                    Text("Go To Child of Screen 1")
                }
                .padding(20)
                .background(.red)
            
                NavigationLink(destination: NavView3()) {
                    Text("Go To Child of Screen 3")
                }
                .frame(width: 200, height: 50)
                .background(.red)
            
                Button(action: { showModal = true }) {
                    Text("My Button")
                }
                .fullScreenCover(isPresented: $showModal) {
                    NavView2(name: "from screen1")
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
        
    }

    
}

struct NavView1_Previews: PreviewProvider {
    static var previews: some View {
        NavView1(isPresented: .constant(false))
    }
}
