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
            .padding(.vertical , 10)
            .padding(.horizontal , 20)
            
            
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
            .padding(.vertical , 10)
            .padding(.horizontal , 15)
            ScrollView(showsIndicators: false){
                ShopCategory()
                SubCategory()
                
                Rectangle()
                    .frame(height: 10)
                    .foregroundColor(Color("LayoutGray"))
                
                
                
                FoodPost(title: "Biriyaniwala", location: "Rajagiriya", promotion: "Buy 1, Get 1 Free", rating:"4.6", deliveryTime: "20-40", fee: 199, postImage: "Biriyaniwala")
                
                FoodPost(title: "Biriyaniwala", location: "Rajagiriya", promotion: "Buy 1, Get 1 Free", rating:"4.6", deliveryTime: "20-40", fee: 199, postImage: "Biriyaniwala")
                
                FoodPost(title: "Biriyaniwala", location: "Rajagiriya", promotion: "Buy 1, Get 1 Free", rating:"4.6", deliveryTime: "20-40", fee: 199, postImage: "Biriyaniwala")
                FoodPost(title: "Biriyaniwala", location: "Rajagiriya", promotion: "Buy 1, Get 1 Free", rating:"4.6", deliveryTime: "20-40", fee: 199, postImage: "Biriyaniwala")
                
                
                
            }
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
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical ,10)
                    Image("Resturant")
                        .resizable()
                        .scaledToFit()
                        .padding(15)
                        .padding(.trailing,-5)
                        .padding(.top,5)
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
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical ,10)
                    Image("Grocery")
                        .resizable()
                        .scaledToFit()
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
            }
            .cornerRadius(10)
            
            .padding(.leading,5)
            // .frame(width: geometry.size.width / 2, height: 100)
        }
        .frame(maxHeight: 90)
        
        .padding(.horizontal , 15)    }
    
    
    
}
struct SubCategory : View{
    
    
    
    
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
                    .frame(maxHeight: 80)
                Text("Convenience")
                    .font(.caption)
                // .fontWeight(.semibold)
                
            }
            VStack{
                Image("Ride")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 80)
                Text("Ride")
                    .font(.caption)
                
            }
            
            VStack{
                Image("Pharmecy")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 80)
                Text("Pharmecy")
                    .font(.caption)
                
            }
            VStack{
                Image("SeeMore")
                
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,25)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LayoutGray"))
                    .cornerRadius(10)
                    .frame(maxHeight: 80)
                
                Text("See all")
                    .font(.caption)
                
            }
            
        }
        .padding(.vertical , 5)
        .padding(.horizontal , 15)
        
        
        
        
    }
    
    
}


