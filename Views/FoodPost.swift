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

    @State var favClicked : Bool = false


    
    
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
                        Spacer()
                        
                        Button(action: {
                            
                          
                                favClicked.toggle()
                           
                            
                        }, label: {
                            Image(
                                systemName: favClicked ? "heart.fill" : "heart"
                                
                            )
                           
                                .resizable()
                                .scaledToFit()
                                .font(Font.title.weight(.heavy))
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        })
                        
                            
                        
                    }
                    .padding(.vertical,15)
                }
                
            }
            VStack{
                HStack(){
                    VStack(spacing: 2){
                        Text("\(title) - \(location)")
                            .font(.system(size: 16).weight(.medium))
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("LKR \(fee) Fee • \(deliveryTime) min ")
                            .font(.system(size: 14))
                            .foregroundColor(Color("TextGray"))
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Spacer()
                    Circle()
                        .scaledToFit()
                        .foregroundColor(Color("LayoutGray"))
                        .frame(maxHeight:35, alignment: .trailing)
                        .overlay(
                            Text("\(rating)")
                                .font(.system(size: 13.5))

                            
                        )
                        .padding(.top,-10)
                       

                }
               

            }
            .frame(maxHeight: 45)
            .padding(.vertical,0)

        }
        .padding(.horizontal,15)
        .padding(.vertical,10)

        
        

    }
    
}


