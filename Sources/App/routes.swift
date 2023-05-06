import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    let userController = UserController()
    app.get("api", "users", use: userController.getUsers)
    
    let heroController = HeroController()
    app.get("api", "heroes", use: heroController.getHeroes)
    
    let avengersController = AvengerController()
    app.get("api", "avengers", use: avengersController.getAvengers)
    
    let movieController = MovieController()
    app.get("api", "movies", use: movieController.getMovies)
    
    let wordOfTheDayController = WordOfTheDayController()
    app.get("api", "wotd", use: wordOfTheDayController.getRandomWord)
    app.get("api", "wotd-list", use: wordOfTheDayController.getWords)
    
    let calendarController = CalendarController()
    app.get("calendar", use: calendarController.getCalendar)
    
}


