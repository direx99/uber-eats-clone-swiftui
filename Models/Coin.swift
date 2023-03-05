//
//  Coin.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import Foundation


struct Coin: Codable , Identifiable {
    let id: String
        let v: Int
        let firstName : String
            let   lastName : String?
            let   studentID: String?
        let nic: Int?
        let address, telephone, email, studentStatus: String?

        enum CodingKeys: String, CodingKey {
            case id = "_id"
            case v = "__v"
            case firstName, lastName
            case studentID = "studentId"
            case nic, address, telephone, email, studentStatus
        }
    }
