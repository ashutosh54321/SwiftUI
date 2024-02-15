//
//  ListCell.swift
//  SwiftUITuts
//
//  Created by Varshney on 29/10/23.
//

import SwiftUI

struct ListCell: View {
    let dishList: Dish
    var body: some View {
        //NavigationLink(destination: PlaylistDetailView(playlist: playlist)) {
              HStack {
                  VStack {
                      Image(dishList.imageName)
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 70, height: 70)
                          .background(.red)
                          .cornerRadius(5)
                          .padding([.leading], 16)
                      Text("Hello")
                  }
                  .background(.orange)
                  Text(dishList.name)
                      .font(.headline)
                      .padding(.leading, 20)
                Spacer()
              }
              .padding(.vertical, 8)
              .background(.yellow)
            }
        //  }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(dishList: Dish(name: "asss dsdsdsd sdsdsd s dsd s d dsdsdsdsdsdsdsd dsdsdsdsd d s d s d sd s d sd sds d sd sd sd sd kdfjjfpj ihfoheohrerihgheogherihog kehrgherioghherghohoho kehrgoheroihgoehrogho ehrgoheorhgoehg erhgoiehgherg kheorhgehg kerhgioehrgoiheg gehgihegheiogh", cuisine: "ssss", price: 100, imageName: ""))
    }
}
