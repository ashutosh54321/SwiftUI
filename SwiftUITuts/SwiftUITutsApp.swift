//
//  SwiftUITutsApp.swift
//  SwiftUITuts
//
//  Created by Varshney on 15/10/23.
//

import SwiftUI

@main
struct SwiftUITutsApp: App {
    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            DifferenceBetweenObjects()
           // EnvironmentView1()
            //SplitView()
           // GridLayout()
            //ListView()
            //NavView1(isPresented: .constant(false))
            //ContentView()
            //    .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
