//
//  MainTabView.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-13.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                MainView()
            }
            .tabItem {
                Label("Home", systemImage: "house.circle")
            }
            
            NavigationView {
                ProductsView()
            }
            .tabItem {
                Label("Products", systemImage: "books.vertical.circle")
            }
            .badge(6)
            
            NavigationView {
                FAQView()
            }
            .tabItem {
                Label("FAQ", systemImage: "questionmark.circle")
            }
            
            NavigationView {
                ContactsView()
            }
            .tabItem {
                Label("Contacts", systemImage: "phone.arrow.up.right.circle")
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
