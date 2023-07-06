//
//  VGridCard.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct VGridCard: View {
    
    var product: Product
    
    var body: some View {
        
        VStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .smallScreenWidth, height: .smallScreenWidth)
            
            
            Text(product.title)
                .font(.bbFont(type: .smallBold))
        }
        .background(
            Color.white
        )
    }
}

struct VGridCard_Previews: PreviewProvider {
    static var previews: some View {
        VGridCard(product: Product(title: "", image: "", type: "", size: "", price: 3))
    }
}
