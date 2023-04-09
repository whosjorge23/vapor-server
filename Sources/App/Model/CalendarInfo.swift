//
//  CalendarInfo.swift
//  
//
//  Created by Giorgio Giannotta on 09/04/23.
//

import Vapor

import Vapor

struct CalendarInfo: Content {
    let year: Int
    let month: Int
    let monthName: String
    let day: Int
    let weekday: Int
    let weekdayName: String
    let hour: Int
    let minute: Int
    let second: Int
}
