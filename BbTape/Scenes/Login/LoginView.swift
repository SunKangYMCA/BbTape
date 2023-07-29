//
//  LoginView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-22.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel: LoginViewModel = LoginViewModel()
    @StateObject var loginInfo: LoginViewModel = LoginViewModel()
    
    var body: some View {
        ZStack {

            VStack(spacing: 20) {
                TextField("username", text: $viewModel.username)
                    .padding()
                
                SecureField("password", text: $viewModel.password)
                    .padding()
                    
                Button {
                    viewModel.authenticateUser()
                    loginInfo.user.loggedUser = viewModel.username
                } label: {
                    Text("Login")
                        .padding()
                }
                .fullScreenCover(isPresented: $viewModel.showingMainTabView) {
                    MainTabView()
                }
            }
        }
        .environmentObject(loginInfo)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
