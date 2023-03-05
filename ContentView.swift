//
//  ContentView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        
                    Text("Home")
                }
                .tag(0)
            BottomNavBarView()
                .tabItem {
                    Image(systemName: "mail.and.text.magnifyingglass")
                       
                    Text("Browse")
                }
                .tag(1)
            BottomNavBarView()
                .tabItem {
                    Image(systemName: "cart.fill")
                       
                    Text("Cart")
                }
                .tag(1)
            BottomNavBarView()
                .tabItem {
                    Image(systemName: "person")
                       
                    Text("Account")
                }
                .tag(1)
           
        }
        .accentColor(.black)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
