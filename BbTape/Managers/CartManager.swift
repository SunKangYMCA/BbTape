//
//  CartManager.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var totalPrice: Int = 0
    
    static var shared = CartManager()
    
    var totalQuantity: Int {
        var totalQuantity = 0
        for product in products {
            totalQuantity += product.quantity
        }
        return totalQuantity
    }
    
    func addToCart(product: Product) {
        
        if let index = products.firstIndex(where: { $0.id == product.id}) {
            products[index].quantity += 1
            totalPrice += products[index].price
        } else {
            products.append(product)
            totalPrice += product.price
        }
    }
    func removeFromCart(product: Product) {
        products = products.filter { $1.id != product.id }
        totalPrice -= product.price * product.quantity
        if products.isEmpty {
            totalPrice = 0
        }
    }
}
