//
//  LoginViewModel.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-22.
//

import Foundation


class LoginViewModel: ObservableObject {
    
    @Published var username: String = "sunkang"
    @Published var password: String = "password"
    @Published var user: User = User()
    @Published var showingMainTabView: Bool = false
    
    func authenticateUser() {
        if username.lowercased() == "sunkang" && password.lowercased() == "password" {
            showingMainTabView = true
        }
    }
}
