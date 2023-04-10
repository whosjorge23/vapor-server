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
    app.get("movies") { req -> [Movie] in
        var movies = [
            Movie(title: "The Matrix", year: 1999, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=m8e-FF8MsqU", imageCoverUrl: "https://www.example.com/movies/the-matrix.jpg"),
                Movie(title: "The Godfather", year: 1972, category: "Crime", trailerUrl: "https://www.youtube.com/watch?v=sY1S34973zA", imageCoverUrl: "https://www.example.com/movies/the-godfather.jpg"),
                Movie(title: "Inception", year: 2010, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=YoHD9XEInc0", imageCoverUrl: "https://www.example.com/movies/inception.jpg"),
                Movie(title: "The Shawshank Redemption", year: 1994, category: "Drama", trailerUrl: "https://www.youtube.com/watch?v=6hB3S9bIaco", imageCoverUrl: "https://www.example.com/movies/the-shawshank-redemption.jpg"),
                Movie(title: "Pulp Fiction", year: 1994, category: "Crime", trailerUrl: "https://www.youtube.com/watch?v=s7EdQ4FqbhY", imageCoverUrl: "https://www.example.com/movies/pulp-fiction.jpg"),
                Movie(title: "The Dark Knight", year: 2008, category: "Action", trailerUrl: "https://www.youtube.com/watch?v=EXeTwQWrcwY", imageCoverUrl: "https://www.example.com/movies/the-dark-knight.jpg"),
                Movie(title: "Jurassic Park", year: 1993, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=lc0UehYemQA", imageCoverUrl: "https://www.example.com/movies/jurassic-park.jpg"),
                Movie(title: "The Silence of the Lambs", year: 1991, category: "Thriller", trailerUrl: "https://www.youtube.com/watch?v=W6Mm8Sbe__o", imageCoverUrl: "https://www.example.com/movies/the-silence-of-the-lambs.jpg"),
                Movie(title: "Forrest Gump", year: 1994, category: "Drama", trailerUrl: "https://www.youtube.com/watch?v=uPIEn0M8su0", imageCoverUrl: "https://www.example.com/movies/forrest-gump.jpg"),
                Movie(title: "The Terminator", year: 1984, category: "Science Fiction", trailerUrl: "https://www.youtube.com/watch?v=frHnTvYjfcM", imageCoverUrl: "https://www.example.com/movies/the-terminator.jpg")
        ]
        for (index, var movie) in movies.enumerated() {
                    movie.id = index + 1
                    movies[index] = movie
                }
            return movies
        }
}


