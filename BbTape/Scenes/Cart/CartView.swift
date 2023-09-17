//
//  CartView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import SwiftUI

struct CartView: View {
    // Rebase test
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var loginInfo: LoginViewModel
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products) { product in
                    CartRow(
                        product: product,
                        onTapRemove: {
                            cartManager.removeFromCart(product: product)
                        }, onTapStepper: { newQuantity in
                            cartManager.updateQuantity(for: product, quantity: newQuantity)
                        })
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.totalPrice).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                LoggedUserProfile(user: loginInfo.user)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
            .environmentObject(LoginViewModel())
    }
}
