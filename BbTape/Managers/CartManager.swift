//
//  CartManager.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import Foundation

class CartManager: ObservableObject {
    // Stored Property
    @Published var products: [Product] = []
    
    static var shared = CartManager()
    
    // Computed Property
    var totalPrice: Int {
        var totalPrice = 0
        for product in products {
            totalPrice += (product.price * product.quantity)
        }
        return totalPrice
    }
    
    var totalQuantity: Int {
        var totalQuantity = 0
        for product in products {
            totalQuantity += product.quantity
        }
        return totalQuantity
    }
    
    func addToCart(product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].quantity += 1
        } else {
            products.append(product)
        }
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
    }
    
    func updateQuantity(for product: Product, quantity: Int) {
        if let index = products.firstIndex(of: product) {
            print("Product id: \(product.id) quantity updated to \(quantity)")
            products[index].quantity = quantity
        } else {
            // Log
            print("Product id: \(product.id) cannot be found")
        }
    }
}
