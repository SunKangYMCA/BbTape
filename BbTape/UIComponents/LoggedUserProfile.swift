//
//  LoggedUserProfile.swift
//  BbTape
//
//  Created by 강성찬 on 2023-07-27.
//

import SwiftUI

struct LoggedUserProfile: View {
    
    var user: User
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.black
                .frame(width: 40, height: 40)
                .cornerRadius(50)
            
            Text(user.loggedUser.prefix(2))
                .foregroundColor(.white)
                .font(.bbFont(type: .smallBold))
        }
    }
}

struct LoggedUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        LoggedUserProfile(user: User(loggedUser: "SU"))
    }
}
