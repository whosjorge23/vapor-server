//
//  Movie.swift
//  
//
//  Created by Giorgio Giannotta on 10/04/23.
//

import Vapor

struct Movie: Content {
    var id: Int?
    let title: String
    let year: Int
    let category: String
    let trailerUrl: String?
    let imageCoverUrl: String?
}
