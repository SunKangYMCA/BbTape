//
//  LoginIcon.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-27.
//

import SwiftUI

struct LoginIcon: View {
    
    var user: User
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.black
                .frame(width: 40, height: 40)
                .cornerRadius(50)
            
            Text(user.loggedUser.prefix(1))
                .foregroundColor(.white)
                .font(.bbFont(type: .smallBold))
        }
    }
}

struct LoginIcon_Previews: PreviewProvider {
    static var previews: some View {
        LoginIcon(user: User(loggedUser: "SU"))
    }
}
