//
//  Exercice2.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import SwiftUI

struct Exercice2: View {
    @State var orderList: [Pizza] = [
        Pizza(slices: 1, tomatoSauce: true, cheeseSupplement: true, picklesSupplement: false, comment: ":D"),
        Pizza(slices: 1, tomatoSauce: false, cheeseSupplement: true, picklesSupplement: true, comment: ":)")
    ]
    @State var isPresented:Bool = false
    
    var body: some View {
        VStack {
            List {
                ForEach(orderList) { order in
                    OrderCell(order: order)
                }
            }
            Spacer()
            Button(action: {
                isPresented = true
            }, label: {
                HStack {
                    Spacer()
                    Text("Ajouter une commande").padding()
                        .foregroundColor(.white)
                    Spacer()
                }
                .background(Color.black)
                .border(Color.black)
            })
            .sheet(isPresented: $isPresented, content: {
                OrderPizzaView(orderList: orderList)
            })
        }.padding()
    }
}

struct Exercice2_Previews: PreviewProvider {
    static let previewOrderList = [
        Pizza(slices: 1, tomatoSauce: true, cheeseSupplement: true, picklesSupplement: false, comment: ":D"),
        Pizza(slices: 1, tomatoSauce: false, cheeseSupplement: true, picklesSupplement: true, comment: ":)")
    ]
    
    static var previews: some View {
        Exercice2()
    }
}
