//
//  Hero.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

struct Hero : Content {
    let name: String
    let lastName: String?
    let superheroName: String
    let job: String
    let skills: [String]
    
//    struct Skills: Content {
//        let name: String
//        let type: String
//    }
}
