//
//  BbTapeApp.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-11.
//

import SwiftUI

@main
struct BbTapeApp: App {
    @StateObject var cartManager: CartManager = CartManager()
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(cartManager)
        }
    }
}
