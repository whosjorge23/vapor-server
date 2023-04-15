import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    let userController = UserController()
    app.get("users", use: userController.getUsers)
    
    let movieController = MovieController()
    app.get("movies", use: movieController.getMovies)
    
    let wordOfTheDayController = WordOfTheDayController()
    app.get("wotd", use: wordOfTheDayController.getRandomWord)
    
    let calendarController = CalendarController()
    app.get("calendar", use: calendarController.getCalendar)
    
}


