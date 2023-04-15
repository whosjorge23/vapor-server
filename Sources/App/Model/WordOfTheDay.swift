//
//  WordOfTheDay.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

struct WordOfTheDay: Content {
    var id: Int?
    let word: String
    let definition: String
    let example: String
}
