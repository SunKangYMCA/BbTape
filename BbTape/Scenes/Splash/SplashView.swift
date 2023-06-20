//
//  SplashView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-11.
//

import SwiftUI

struct SplashView: View {
    
    @StateObject var viewModel: SplashViewModel = SplashViewModel()
    
    var body: some View {
        ZStack {
            if viewModel.shouldShowMainTabView {
                MainTabView()
            } else {
                Rectangle()
                    .ignoresSafeArea()
                VStack {
                    Text("***BB***\nTAPE")
                        .font(.bbFont(type: .hugeBold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Image("SplashTape")
                        .resizable()
                        .rotationEffect(.degrees(+10))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.showMainTabView()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
