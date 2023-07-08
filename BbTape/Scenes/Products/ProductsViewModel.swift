//
//  ProductsViewModel.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

class ProductsViewModel: ObservableObject {
    
    @Published var shouldShowProductsDetailView: Bool = false
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
}
