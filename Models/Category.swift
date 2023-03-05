


import Foundation


struct Category: Codable , Identifiable {
    let id, title, image: String
       let v: Int?

       enum CodingKeys: String, CodingKey {
           case id = "_id"
           case title, image
           case v = "__v"
       }

    }
