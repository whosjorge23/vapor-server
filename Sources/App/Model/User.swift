//
//  User.swift
//  
//
//  Created by Giorgio Giannotta on 10/04/23.
//

import Vapor

//struct User: Content {
//    let name: String
//    let lastName: String
//    let age: Int
//    let hobbies: [Hobby]?
//    let work: String
//
//
//}
//
//struct Hobby: Content {
//    let name: String
//}

struct User: Content {
    let name: String
    let lastName: String
    let age: Int
    let work: String
    let hobbies: [Hobby]
    
    struct Hobby: Content {
        let name: String
        let type: String
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(age, forKey: .age)
        try container.encode(work, forKey: .work)
        try container.encode(hobbies, forKey: .hobbies)
    }
    
    private enum CodingKeys: String, CodingKey {
        case name
        case lastName = "last_name"
        case age
        case work
        case hobbies
    }
}
