//
//  CollectionView.swift
//  SwiftUITuts
//
//  Created by Varshney on 01/11/23.
//

//Using ScrollView with VStack and HStack (iOS13+)
//Using ScrollView with LazyHGrid or LazyVGrid (iOS14+)

import SwiftUI

struct CollectionView: View {
    let title: String
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        //=======================
        /*ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...100, id: \.self) { i in
                    if i%2 == 0 {
                        Color.orange.frame(width: 90, height: 100)
                            .cornerRadius(10)
                    } else {
                        Color.gray.frame(width: 90, height: 100)
                            .cornerRadius(10)
                    }
                }
            }
        }*/
       //===========================
       
        Grid(alignment: .leading, horizontalSpacing: 40, verticalSpacing: 12) {
            GridRow {
                Text("Votes")
                Text("Percentage")
                Text("Rating")
            }
            GridRow {
                Text("4")
                ProgressView(value: 0.1)
                Image(systemName: "star")
            }
            GridRow {
                Text("12")
                ProgressView(value: 0.2)
                Image(systemName: "star")
            }
            GridRow {
                Text("Votes")
                Text("Percentage")
                    .gridColumnAlignment(.trailing)
                Text("Rating")
            }
            GridRow {
                Text("Vote")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)
                Text("Rating")
            }
            Divider().gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text("4")
                ProgressView(value: 0.1).frame(maxWidth: 50)
                Circle().gridCellUnsizedAxes([.horizontal, .vertical])
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.2).frame(maxWidth: 150)
                Image(systemName: "star")
            }
        }
        .padding(10)
         
       
    }
        
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(title: "test")
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
