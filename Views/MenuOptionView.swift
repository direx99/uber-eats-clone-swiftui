//
//  MenuOptionView.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-04.
//

import SwiftUI

struct MenuOptionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(MenuModel.allCases, id: \.self){
                    item in
                    
                    Text(item.title)
                }
            }
        }
    }
}

struct MenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionView()
    }
}
