//
//  Order.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import Foundation

class Pizza: ObservableObject, Identifiable {
    
    let id = UUID()
    @Published var slices: Int
    @Published var tomatoSauce: Bool?
    @Published var cheeseSupplement: Bool?
    @Published var picklesSupplement: Bool?
    @Published var comment: String?
    
    init(slices: Int, tomatoSauce: Bool?, cheeseSupplement: Bool?, picklesSupplement: Bool?, comment: String?) {
        self.slices = slices
        self.tomatoSauce = tomatoSauce
        self.cheeseSupplement = cheeseSupplement
        self.picklesSupplement = picklesSupplement
        self.comment = comment
    }
}
