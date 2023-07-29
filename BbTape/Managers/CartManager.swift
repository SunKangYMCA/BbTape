//
//  CartManager.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var total: Int = 0
    
    
    func addToCart(product: Product) {
        
        var addNewProduct = true
        
        for (index, item) in products.enumerated() {
            if item.id == product.id {
                products[index].count = products[index].count + 1
                total += product.price
                addNewProduct = false
            }
        }
        if addNewProduct {
            products.append(product)
            total += product.price
        }
    }
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price * product.count
        if products.isEmpty {
            total = 0
        }
    }
}
