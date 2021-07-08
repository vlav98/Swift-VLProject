//
//  Exercice1.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import SwiftUI

struct Exercice1: View {
    
    @State var isActive = false
    
    var body: some View {
        Button(action: {
            isActive.toggle()
        }, label: {
            HStack {
                Spacer()
                Text(isActive ? "My Active Button" : "My Inactive Button").padding()
                    .foregroundColor(isActive ? .white : .black)
                Spacer()
            }
            .background(isActive ? Color.black : Color.white)
            .border(isActive ? Color.black : Color.white)
        })
        .padding()
    }
}

struct Exercice1_Previews: PreviewProvider {
    static var previews: some View {
        Exercice1()
    }
}
