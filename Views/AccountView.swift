//
//  AccountView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-04-03.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            HStack{
                
                Text("Dinith Hasaranga")
                    .font(.system(size: 35).bold())
                Spacer()
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70,height: 70)
                    .padding(.leading,40)
            }
            HStack{
                AccountMenu()
                AccountMenu()
                AccountMenu()
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            Rectangle()
                .frame(height: 10)
                .foregroundColor(Color("LayoutGray"))
                .frame(width: .infinity)
                .padding(.horizontal,-20)
            NavigationStack{
                ScrollView(showsIndicators: false){
                    Group{
                        
                        SettingMenu(menuTitle: "Promotion")
                        SettingMenu(menuTitle: "Help")
                        SettingMenu(menuTitle: "Resturants Rewards")
                        SettingMenu(menuTitle: "Business Prefernece")
                        SettingMenu(menuTitle: "Invite Friends")
                        SettingMenu(menuTitle: "Privacy")
                        SettingMenu(menuTitle: "COVID-19 Safty Center")

                        
                    }
                }
                
            }


            Spacer()

        }
        .padding()
    }
}



struct AccountMenu : View{
    
    
    
    
    var body: some View{
        HStack{
            VStack{
                
            }
            
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(Color("GrayRec"))
            .cornerRadius(20)
        }
    }
}
        
struct SettingMenu : View{
    
    
    @State var menuTitle : String
    
    var body: some View{
        HStack{
            
                Image(systemName: "suit.heart.fill")
                
                Text("\(menuTitle)")
                .font(.title2)
                .padding(.leading)
                Spacer()
            
            
            
            
        }
        .padding()
    }
}
        
