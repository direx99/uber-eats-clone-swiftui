//
//  MenuModel.swift
//  Uber Eats Clone
//
//  Created by Dinith Hasaranga on 2023-03-04.
//

import Foundation

enum MenuModel : Int , CaseIterable {
    case srilankan
    case amrican
    case english
    
    var title : String {
        switch self {
        case .english: return "English"
        case .amrican: return "Ameriacn"
        case .srilankan: return "sri lanlam"
        }
    }
    
}
