//
//  ContactsView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct ContactsView: View {
    
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
                    ListRow(infoImage: "phone", infoUnit: contactsList.phone)
                    ListRow(infoImage: "e.circle", infoUnit: contactsList.email)
                    ListRow(infoImage: "house", infoUnit: contactsList.address)
                    ListRow(infoImage: "w.circle", infoUnit: contactsList.website)
                }
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
