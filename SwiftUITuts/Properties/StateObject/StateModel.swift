//
//  StateModel.swift
//  SwiftUITuts
//
//  Created by Varshney on 03/11/23.
//

import Foundation

class StateModelData: ObservableObject {
    @Published var name = "John"
    @Published var age = 30
}
