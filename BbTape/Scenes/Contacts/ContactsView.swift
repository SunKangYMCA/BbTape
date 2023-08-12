//
//  ContactsView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct ContactsView: View {
    
    @EnvironmentObject var loginInfo: LoginViewModel
    
    var contactsList: Contact = Contact(phone: "070-4711-7900", email: "info@bbtape.com", address: "318, Jinwi-ro, Jinwi-myeon, Pyeongtaek-si, Gyeonggi-do, Republic of Korea", website: "https://bbtape.com")
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
            
            VStack {
                Image("CallCenter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                List {
                    ContactListRow(infoImage: "phone", infoUnit: contactsList.phone)
                    ContactListRow(infoImage: "e.circle", infoUnit: contactsList.email)
                    ContactListRow(infoImage: "house", infoUnit: contactsList.address)
                    ContactListRow(infoImage: "w.circle", infoUnit: contactsList.website)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                LoggedUserProfile(user: loginInfo.user)
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
            .environmentObject(LoginViewModel())
    }
}
