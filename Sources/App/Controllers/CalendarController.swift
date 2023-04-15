//
//  CalendarController.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

final class CalendarController {
    func getCalendar(_ req: Request) throws -> EventLoopFuture<CalendarInfo> {
        let calendar = Calendar.current
        let now = Date()
        let year = calendar.component(.year, from: now)
        let month = calendar.component(.month, from: now)
        let day = calendar.component(.day, from: now)
        let weekday = calendar.component(.weekday, from: now)
        let hour = calendar.component(.hour, from: now)
        let minute = calendar.component(.minute, from: now)
        let second = calendar.component(.second, from: now)
        let monthName = calendar.monthSymbols[month-1].capitalized
        let weekdayName = calendar.weekdaySymbols[weekday-1].capitalized
        let calendarInfo = CalendarInfo(year: year, month: month, monthName: monthName, day: day, weekday: weekday, weekdayName: weekdayName, hour: hour, minute: minute, second: second)
        return req.eventLoop.makeSucceededFuture(calendarInfo)
    }
}

