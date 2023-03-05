//
//  BrowseView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-05.
//

import SwiftUI

struct BrowseView: View {
    @StateObject var viewModel:HomeModelView
    let columns = [        GridItem(.flexible()),        GridItem(.flexible())    ]
    var categories : [CategoryModel] = Categories.topcat
    var allcategories : [CategoryModel] = Categories.allcat

    var body: some View {
        VStack(alignment: .leading){
            
            Text("Search")
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    
                    ScrollView{
                        LazyVGrid(columns: columns) {

                            ForEach(viewModel.categories){ category in
                                BottomNavBarView(category : category)
                            }
                        }
                    }
                    
                    
                }
               
                
            }
            Spacer()
            
        }
        
        .padding(.horizontal,15)
    }
    
}




