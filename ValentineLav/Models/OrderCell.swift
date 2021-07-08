//
//  OrderCell.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import SwiftUI

struct OrderCell: View {
    @State var order: Pizza
    
    var body: some View {
        VStack(alignment: .leading) {
            Text((order.slices > 1) ? "\(order.slices) parts" : "\(order.slices) part")
            HStack {
                Text(order.tomatoSauce! ? "🍅" : "")
                Text(order.cheeseSupplement! ? "🧀" : "")
                Text(order.picklesSupplement! ? "🥒" : "")
            }
            Text(order.comment ?? "Pas de commentaires")
        }
    }
}

struct OrderCell_Previews: PreviewProvider {
    static let previewOrder = Pizza(slices: 1, tomatoSauce: true, cheeseSupplement: true, picklesSupplement: false, comment: ":D")
    
    static var previews: some View {
        OrderCell(order: previewOrder)
            .previewLayout(.sizeThatFits)
            .scaledToFit()
            .padding()
    }
}
