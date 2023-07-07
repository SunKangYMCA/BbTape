//
//  ProductsView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct ProductsView: View {
    
    @StateObject var viewModel: ProductsViewModel = ProductsViewModel()
    @StateObject var cartManager: CartManager = CartManager()
    
    var body: some View {
        
        VStack {
            VGridView
        }
        .navigationTitle("Products Shop")
        .toolbar {
            NavigationLink {
                CartView()
                    .environmentObject(cartManager)
            } label: {
                CartButton(numberOfProducts: cartManager.products.count)
            }
        }
    }
    
    
    private var VGridView: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(productList, id: \.id) { product in
                    Button {
                        viewModel.shouldShowProductsDetailView.toggle()
                    } label: {
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                    .sheet(isPresented: $viewModel.shouldShowProductsDetailView) {
                        ProductsDetailView(product: product)
                    }
                }
            }
            .padding()
        }
    }
}





struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
