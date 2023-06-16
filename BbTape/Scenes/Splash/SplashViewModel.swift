//
//  SplashViewModel.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-11.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var shouldShowMainTabView: Bool = false
    
    func showMainTabView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation {
                self.shouldShowMainTabView = true
            }
        }
    }
}
