//
//  Model.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import Foundation


struct Dish: Codable, Hashable, Identifiable {
  //var id: Int
  var id = UUID()
  var name: String
  var cuisine: String
  var price: Int
  var imageName: String
}



