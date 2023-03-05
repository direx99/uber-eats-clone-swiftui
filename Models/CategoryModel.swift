//
//  CategoryModel.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-05.
//

import Foundation

struct CategoryModel : Identifiable{
    var id = UUID()
    
    let categoryTitile : String
    let img : String
}

struct Categories {
    static let topcat = [
        CategoryModel(  categoryTitile: "Bi" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hhjk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hkhk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Koio" ,
            img :"Biriyani"
            )
    ]
    static let allcat = [
        CategoryModel(  categoryTitile: "Bi" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hhjk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hkhk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Koio" ,
            img :"Biriyani"
            ),
        CategoryModel(  categoryTitile: "Bi" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hhjk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Hkhk" ,
            img :"Biriyani"
            ),
        CategoryModel( categoryTitile: "Koio" ,
            img :"Biriyani"
            ),
        
    ]
}
