//
//  OrderPizzaView.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import SwiftUI

struct OrderPizzaView: View {
//    @Binding var orderList: [Pizza]
    @State var orderList: [Pizza]
//    @EnvironnementObject var orderList: [Pizza] = []
    @State private var slices: Int = 1
    @State private var tomatoSauce: Bool = true
    @State private var cheeseSupplement: Bool = false
    @State private var picklesSupplement: Bool = false
    @State private var comment: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Personnalisez votre pizza")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            Divider()
            Stepper("Nombre de parts: \(slices)", value: $slices, in: 1...12)
            Text("Minimum 1 part, maximum 12")
                .font(.footnote)
            Toggle(isOn: $tomatoSauce, label: {
                Text("Base sauce tomate 🍅")
            })
            Toggle(isOn: $cheeseSupplement, label: {
                Text("Supplément fromage 🧀")
            })
            Toggle(isOn: $picklesSupplement, label: {
                Text("Suppléments cornichons 🥒")
            })
            TextField("Commentaire", text: $comment)
                .padding()
                .border(Color.black, width: 1)
            Button(action: {
                orderList.append(Pizza(slices: slices, tomatoSauce: tomatoSauce, cheeseSupplement: cheeseSupplement, picklesSupplement: picklesSupplement, comment: comment))
                presentationMode.wrappedValue.dismiss()
            },
               label: {
                   HStack {
                       Spacer()
                       Text("Commander").padding()
                           .foregroundColor(.white)
                       Spacer()
                   }
               .background(Color.black)
               .border(Color.black)
               })
            Spacer()
        }
        .padding()
    }
}

struct OrderPizzaView_Previews: PreviewProvider {
    static let previewOrderList = [
        Pizza(slices: 1, tomatoSauce: true, cheeseSupplement: true, picklesSupplement: false, comment: ":D"),
        Pizza(slices: 1, tomatoSauce: false, cheeseSupplement: true, picklesSupplement: true, comment: ":)")
    ]
    
    static var previews: some View {
        OrderPizzaView(orderList: previewOrderList)
            .previewLayout(.sizeThatFits)
            .scaledToFit()
            .padding()
    }
}
