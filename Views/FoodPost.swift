//
//  MenuOptionView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-04.
//

import SwiftUI

struct FoodPost : View{
    
    
    
   @State var title : String
    @State var location : String
    @State var promotion : String
    @State var rating : String
    @State var deliveryTime : String
    @State var fee : Int
    @State var postImage : String



    
    
    var body: some View{
        VStack{
            HStack{
                ZStack(alignment: .topLeading){
                    Image("\(postImage)")
                        .resizable()
                        .scaledToFit()
                    HStack(spacing: 0){
                        Text("\(promotion)")
                            .font(.caption)
                            .padding(.vertical ,3)
                            .padding(.horizontal ,10)
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .background(Color("BarGreen"))
                        
                        
                        Text("frfd")
                            .font(.caption)
                            .padding(.vertical ,3)
                            .foregroundColor(Color("BarGreen"))
                            .background(Color("BarGreen"))
                            .cornerRadius(30)
                            .padding(-10)
                        
                    }
                    .padding(.vertical,15)
                }
                
            }
            VStack{
                HStack(){
                    VStack(spacing: 3){
                        Text("\(title) - \(location)")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("LKR \(fee) Fee • \(deliveryTime) min ")
                            .foregroundColor(Color("TextGray"))
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Spacer()
                    Circle()
                        .scaledToFit()
                        .foregroundColor(Color("LayoutGray"))
                        .frame(alignment: .trailing)
                        .overlay(
                            Text("\(rating)")
                            
                            
                        )
                   
                        .padding(.top,5)

                }
               

            }
            .frame(maxHeight: 45)
            .padding(.vertical,5)

        }
        .padding(.horizontal,15)
        .padding(.vertical,10)

        
        

    }
    
}


