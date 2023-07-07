//
//  ProductRow.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        HStack(spacing: 10) {
            Image(product.image)
                .resizable()
                .frame(width: 50, height: 80)
                .background(Color.white)
                .cornerRadius(.cornerRadius)
                .padding()
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.title)
                    .bold()
                
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.875, brightness: 0.881))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[1])
            .environmentObject(CartManager())
    }
}
