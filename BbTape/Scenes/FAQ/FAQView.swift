//
//  FAQView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct FAQView: View {
    
    @EnvironmentObject var loginInfo: LoginViewModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
            
            Text("Q&A")
                .font(.bbFont(type: .hugeBold))
                .foregroundColor(.orange)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                LoggedUserProfile(user: loginInfo.user)
            }
        }
    }
}
struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
            .environmentObject(LoginViewModel())
    }
}
