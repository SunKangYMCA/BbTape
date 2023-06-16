//
//  ProductsView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct ProductsView: View {
    
    @StateObject var viewModel: ProductsViewModel = ProductsViewModel()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
            
            VStack {
                VGridView
            }
            .navigationTitle("Products")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var VGridView: some View {
        ScrollView {
            VStack {
                Spacer()
                
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(viewModel.units) { unit in
                        Button {
                            viewModel.shouldShowProductsDetailView.toggle()
                        } label: {
                            VGridCard(unit: unit)
                        }
                        .sheet(isPresented: $viewModel.shouldShowProductsDetailView) {
                            ProductsDetailView(unit: unit)
                        }
                    }
                }
            }
        }
    }
}





struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
