//
//  ProductCard.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .background(.white)
                    .cornerRadius(20)
                
                VStack(alignment: .leading) {
                    Text(product.title)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                        
                }
                .padding(.horizontal)
                .frame(width:180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
                
            }
            .frame(width: 180, height: 220)
            .shadow(radius: 3)
        
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.311, brightness: 0.491))
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[3])
            .environmentObject(CartManager())
    }
}
