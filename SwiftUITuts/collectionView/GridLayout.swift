//
//  GridLayout.swift
//  SwiftUITuts
//
//  Created by Varshney on 02/11/23.
//

import SwiftUI

//Source:- https://sarunw.com/posts/swiftui-lazyvgrid-lazyhgrid/
struct GridLayout: View {
//    let columns = [
//        GridItem(.fixed(50), spacing: 0),
//        GridItem(.fixed(50), spacing: 10),
//        GridItem(.fixed(50), spacing: 20),
//        GridItem(.fixed(50), spacing: 30),
//        GridItem(.fixed(50), spacing: 40)
//    ]
    
//    let columns = [
//            GridItem(.fixed(100)),
//            GridItem(.adaptive(minimum: 50))
//        ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
//    let columns = [
//        GridItem(.fixed(50)),
//        GridItem(.fixed(50)),
//        GridItem(.fixed(50))
//    ]
//    let columns = [
//        GridItem(.fixed(50)),
//        GridItem(.fixed(100)),
//        GridItem(.fixed(200))
//    ]
    
    let itemPerRow: CGFloat = 3
    let horizontalSpacing: CGFloat = 16
    let height: CGFloat = 150
    let cards: [Card] = MockStore.cards
    
    
    var body: some View {
        // 3. Use geometry to calculate width of the cards based on itemPerRow
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading, spacing: 2) {
                    ForEach(0..<cards.count) { i in
                    // 5. Process the first index of each row
                        if i % Int(itemPerRow) == 0 {
                            // 6. Get view
                            buildView(rowIndex: i, geometry: geometry)
                        }
                    }
                }
            }
        }
    }
    
    // 8. Iterate data and see if got more index
    func buildView(rowIndex: Int, geometry: GeometryProxy) -> RowView? {
        var rowCards = [Card]()
        for itemIndex in 0..<Int(itemPerRow) {
            // 8. Check if got two item in counts, then insert it properly
            if rowIndex + itemIndex < cards.count {
                    rowCards.append(cards[rowIndex + itemIndex])
                }
            }
            if !rowCards.isEmpty {
                return RowView(cards: rowCards, width: getWidth(geometry: geometry), height: height, horizontalSpacing: horizontalSpacing)
            }
            
        return nil
    }
    
    func getWidth(geometry: GeometryProxy) -> CGFloat {
        let width: CGFloat = (geometry.size.width - horizontalSpacing * (itemPerRow + 1)) / itemPerRow
        return width
    }
}

struct RowView: View {
    let cards: [Card]
    let width: CGFloat
    let height: CGFloat
    let horizontalSpacing: CGFloat
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(cards) { card in
                CardView(title: card.title)
                    .frame(width: width, height: height)
            }
        }
        .padding()
    }
}

struct GridLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridLayout()
    }
}







struct MockStore {
    static var cards = [
        Card(title: "Italy"),
        Card(title: "England"),
        Card(title: "Portugal"),
        Card(title: "Belgium"),
        Card(title: "Germany"),
        Card(title: "Mexico"),
        Card(title: "Canada"),
        Card(title: "Italy"),
        Card(title: "England"),
        Card(title: "Portugal"),
        Card(title: "Belgium"),
        Card(title: "Germany"),
        Card(title: "Mexico"),
        Card(title: "Canada"),
        Card(title: "England"),
        Card(title: "Portugal"),
        Card(title: "Belgium"),
        Card(title: "Germany"),
        Card(title: "Mexico"),
        Card(title: "Canada"),
    ]
}
struct Card: Identifiable {
    let id = UUID()
    let title: String
}



struct CardView: View {
    let title: String
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12).foregroundColor(.random)
            Text(title)
                .font(.title2)
        }
        
    }
}
