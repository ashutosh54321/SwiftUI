//
//  ListView.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import SwiftUI

struct ListView: View {
    @State private var dishSelected: String?
    @State private var dishList = [
        Dish(name: "rasgulla sasasa s sasasasasasa sas a s as as a s as as a s as as a s as as  s a s s as a sa 1 2 12 1 js s kff kjbfiwef wefkbwif niwhfwe f kuhfiwef fkwhfiuhwfw fwkfhiuwhfw f", cuisine: "Sweets", price: 30, imageName: "img1"),
        Dish(name: "rasberry", cuisine: "Sweets", price: 100, imageName: "img2"),
        Dish(name: "Sahee Paneer", cuisine: "Dinner", price: 230, imageName: "img3"),
        Dish(name: "Rabdi", cuisine: "Sweets", price: 200, imageName: "img1")
      ]
    //List(dishlist, id: .self, selection: $dishSelected)
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(dishList) { dish in
                        NavigationLink(destination: NavView2(name: dish.name)) {
                            ListCell(dishList: dish)
                        }
                        .padding(20)
                        .background(.red)
                        
                    }
                    .onDelete { indexSet in
                        dishList.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        dishList.move(fromOffsets: indices, toOffset: newOffset)
                    }
                }
                header: {
                    Text("asasasasas")
                    .frame(height: 40)
                
                }
                Section {
                    ForEach(dishList) { dish in
                        ListCell(dishList: dish)
                    }
                    .onMove { indices, newOffset in
                        dishList.move(fromOffsets: indices, toOffset: newOffset)
                    }
                }
            }
            .listRowSeparator(.hidden)
            .navigationTitle("My dishes")
            //.navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
