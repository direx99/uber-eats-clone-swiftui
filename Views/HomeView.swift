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
                    .foregroundColor(Color.gray)
                    .padding(10)
                
                
                
                
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
            ShopCategory()
            ShopCategdory()
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



struct ShopCategory : View{
    
    var body: some View{
        
        HStack(alignment: .center ,spacing: 0) {
            // First frame
            ZStack(alignment: .topLeading){
                Rectangle()
                    .fill(Color("LayoutGray"))
                ZStack{
                    
                    
                    VStack{
                        Text("Promo")
                            .font(.caption)
                            .padding(.vertical ,3)
                            .padding(.horizontal ,10)
                            .foregroundColor(Color("LayoutGray"))
                            .background(Color("PromoGreen"))
                            .cornerRadius(30)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        Spacer()
                        
                        
                        Text("Resturants")
                            .font(.title3)
                        
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical ,10)
                    Image("Resturant")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical,15)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
            }
            
            .cornerRadius(10)
            
            .padding(.trailing,5)
            // .frame(width: geometry.size.width / 2, height: 100)
            
            
            
            // Second frame
            ZStack(alignment: .topLeading){
                Rectangle()
                    .fill(Color("LayoutGray"))
                ZStack{
                    
                    
                    VStack{
                        Text("Promo")
                            .font(.caption)
                            .padding(.vertical ,3)
                            .padding(.horizontal ,10)
                            .foregroundColor(Color("LayoutGray"))
                            .background(Color("PromoGreen"))
                            .cornerRadius(30)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        Spacer()
                        
                        
                        Text("Grocery")
                            .font(.title3)
                        
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical ,10)
                    Image("Grocery")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical,15)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
            }
            .cornerRadius(10)
            
            .padding(.leading,5)
            // .frame(width: geometry.size.width / 2, height: 100)
        }
        .frame(maxHeight: 110)
        .padding(.top,15)
        
    }
    
    
    
}
struct ShopCategdory : View{
    
    
    
    
    var body: some View{
        
        HStack (){
            // First frame
            
            
            
            
            
            VStack{
                Image("Convienience")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 90)
                Text("More")
                    .font(.caption)
                
            }
            VStack{
                Image("Grocery")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 90)
                Text("More")
                    .font(.caption)
                
            }
            
            VStack{
                Image("Grocery")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 90)
                Text("More")
                    .font(.caption)
                
            }
            VStack{
                Image("Grocery")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 90)
                
                Text("More")
                    .font(.caption)
                
            }
            
        }
        
        
        
        
    }
    
    
}


