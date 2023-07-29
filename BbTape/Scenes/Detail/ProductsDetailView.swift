//
//  ProductsDetailView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct ProductsDetailView: View {
    
    var product: Product
    
    var body: some View {
        VStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .largeScreenWidth, height: .largeScreenWidth)
                .cornerRadius(.cornerRadius)
                .background(
                    Color.white
                        .cornerRadius(.cornerRadius)
                )
                .padding(5)
                .background(
                    Color.black
                        .cornerRadius(.cornerRadius)
                )
                .padding()
            
            productDetail
        }
    }
    
    private var productDetail: some View {
        VStack {
            DetailTitle(title: "Maker", explanation: "BB TAPE")
            DetailTitle(title: "Title", explanation: product.title)
            DetailTitle(title: "Size ", explanation: product.size)
            DetailTitle(title: "Type ", explanation: product.type)
        }
        .padding(.horizontal, 32)
    }
    
}

struct ProductsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailView(product: Product(title: "", image: "", type: "", size: "", price: 1, count: 1))
            .environmentObject(CartManager())
    }
}
