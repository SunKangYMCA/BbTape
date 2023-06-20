//
//  ProductsDetailView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct ProductsDetailView: View {
    
    var unit: Unit
    
    var body: some View {
        VStack {
            Image(unit.image)
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
            DetailTitle(title: "Title", explanation: unit.title)
            DetailTitle(title: "Size ", explanation: unit.size)
            DetailTitle(title: "Type ", explanation: unit.type)
        }
        .padding(.horizontal, 32)
    }
    
}

struct ProductsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailView(unit: Unit(title: "", image: "", type: "", size: ""))
    }
}
