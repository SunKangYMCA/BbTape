//
//  ProductCard.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    @State var product: Product
    
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
                    .background(Color.brown)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Product(title: "", image: "", type: "", size: "", price: 1, count: 1))
            .environmentObject(CartManager())
    }
}
