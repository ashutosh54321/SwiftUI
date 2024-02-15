//
//  Landmark.swift
//  SwiftUITuts
//
//  Created by Varshney on 15/10/23.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var kind: String
    var description: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    
    
}
