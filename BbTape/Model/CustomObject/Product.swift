//
//  Product.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct Product: Hashable, Identifiable {
    var id: UUID = UUID()
    var title: String
    var image: String
    var type: String
    var size: String
    var price: Int
    var quantity: Int
}

