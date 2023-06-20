//
//  VGridCard.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-14.
//

import SwiftUI

struct VGridCard: View {
    
    var unit: Unit
    
    var body: some View {
        
        VStack {
            Image(unit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .smallScreenWidth, height: .smallScreenWidth)
            
            
            Text(unit.title)
                .font(.bbFont(type: .smallBold))
        }
        .background(
            Color.white
        )
    }
}

struct VGridCard_Previews: PreviewProvider {
    static var previews: some View {
        VGridCard(unit: Unit(title: "", image: "", type: "", size: ""))
    }
}
