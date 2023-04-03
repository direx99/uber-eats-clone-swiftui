//
//  ContentView.swift
//  Uber Eats Clone
//


import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    @StateObject var viewModel = HomeModelView()

    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        
                    Text("Home")
                }
                .tag(1)
          
            BrowseView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "person")
                       
                    Text("Homhhjhe")
                }
                .tag(0)
            BrowseView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "cart")
                       
                    Text("Homhhjhe")
                }
                .tag(0)
            BrowseView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "person")
                       
                    Text("Homhhjhe")
                }
                .tag(0)
           
        }
        .accentColor(.black)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
