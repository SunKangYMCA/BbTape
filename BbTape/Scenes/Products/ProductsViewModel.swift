//
//  ProductsViewModel.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

class ProductsViewModel: ObservableObject {
    
    @Published var shouldShowProductsDetailView: Bool = false
    @Published var showingCount: Product = Product(title: "", image: "", type: "", size: "", price: 0, count: 0)
    
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    @Published var productList: [Product] = [
        Product(title: "BB PREMIUM", image: "PreCutBlackLogo", type: "Pre-cut, SOFT, STANDARD, STRONG, BULK, MINI", size: "5cm * 5m", price: 40, count: 1),
        Product(title: "BB LYMPH", image: "BBLymph", type: "BEIGE, BLACK, BLUE, PINK", size: "5cm * 5m", price: 45, count: 1),
        Product(title: "BB FACE", image: "BBFace", type: "MINI, PATTERN, PURPLE, PINK, BEIGE", size: "5cm * 5m", price: 57, count: 1),
        Product(title: "BB FACE SILK", image: "BBFaceSilk", type: "PURPLE, BEIGE, PINK", size: "5cm * 5m", price: 52, count: 1),
        Product(title: "BB CROSS", image: "BBCross", type: "LAVENDER, BLUE, PINK", size: "5cm * 5m", price: 39, count: 1),
        Product(title: "BB ACU", image: "BBAcu", type: "BEIGE, BLUE", size: "5cm * 5m", price: 58, count: 1)
    ]
}
