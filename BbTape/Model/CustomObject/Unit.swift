//
//  Unit.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct Product: Identifiable {
    var id: UUID = UUID()
    var title: String
    var image: String
    var type: String
    var size: String
    var price: Int
}
