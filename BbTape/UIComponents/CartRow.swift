//
//  CartRow.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-06.
//

import SwiftUI

struct CartRow: View {
    
    @State var product: Product
    var onTapRemove: () -> ()
    var onTapStepper: (Int) -> ()
    
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
            
            Stepper("", value: $product.quantity, in: 0...100, step: 1)
                .onChange(of: product.quantity) { newValue in
                    onTapStepper(newValue)
                }
            
            Text("X \(product.quantity)")
            
            Button {
                onTapRemove()
            } label: {
                Image(systemName: "trash")
                    .foregroundColor(Color.red.opacity(0.7))
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(product: Product(title: "", image: "", type: "", size: "", price: 1, quantity: 1), onTapRemove: {}, onTapStepper: { _ in })
    }
}
