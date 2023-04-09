import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("json") { req -> Response in
        let json = ["name": "John", "lastname": "Doe", "email": "johndoe@email.com", "hobbies" : ["Rugby", "TV", "NFL"]]
            let data = try JSONSerialization.data(withJSONObject: json)
            let body = Response.Body(data: data)
            let response = Response(status: .ok, headers: HTTPHeaders([("Content-Type", "application/json")]), body: body)
            return response
        }
    
    app.get("calendar") { req -> EventLoopFuture<CalendarInfo> in
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


