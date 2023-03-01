//
//  HomeView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-01.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Deliver now")
                        .foregroundColor(Color("TextGray"))
                    HStack{
                        Text("81 , Wadduwa ")
                            .font(.headline)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                        
                    }
                    .padding(.top,-10)
                }
                Spacer()
                VStack(alignment: .leading){
                    
                    HStack{
                        Image(systemName: "chevron.down")
                    }
                }
            }
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
              
                TextField("Food , groceries , drinks , etc.", text: $searchText)
                    .foregroundColor(Color("TextGray"))
                    .padding(8)
                    
                
               
                Divider()
                    .frame(height: 25)
                Button(action: {
                   
                }) {
                   
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            .background(Color("SearchColor"))
            .frame(width: .infinity)
            .cornerRadius(50)
         
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

